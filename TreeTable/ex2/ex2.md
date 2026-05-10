# System setup (Linux only, required by AFL++)
echo core | sudo tee /proc/sys/kernel/core_pattern
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

# Seeds and fuzzing
python3 gen_seeds.py
AFL_USE_ASAN=1 afl-clang-fast -g -O1 Ex2Harness/harness.c ../treetable.c -o harness_fuzz
afl-fuzz -i seeds -o outputs -- ./harness_fuzz

# Minimize corpus
mkdir -p minimized
afl-cmin -i outputs/default/queue -o minimized -- ./harness_fuzz

# Generate concrete test files
python3 generate_tests.py minimized Ex2ConcTestSuite
python3 generate_tests.py outputs/default/crashes Ex2ConcTestSuite/crashes

# Build normal tests
for f in Ex2ConcTestSuite/test_*.c; do
    clang -fprofile-instr-generate -fcoverage-mapping -g \
        "$f" ../treetable.c -o "${f%.c}.out"
done

# Build crash tests
for f in Ex2ConcTestSuite/crashes/crash_*.c; do
    clang -fprofile-instr-generate -fcoverage-mapping -g \
        "$f" ../treetable.c -o "${f%.c}.out"
done

# Run normal tests
for f in Ex2ConcTestSuite/test_*.out; do
    LLVM_PROFILE_FILE="${f%.out}.profraw" "$f"
done

# Run crash tests (allow non-zero exit)
for f in Ex2ConcTestSuite/crashes/crash_*.out; do
    LLVM_PROFILE_FILE="${f%.out}.profraw" "$f" || true
done

# Merge all profiles
llvm-profdata merge -sparse \
    Ex2ConcTestSuite/test_*.profraw \
    Ex2ConcTestSuite/crashes/crash_*.profraw \
    -o Ex2ConcTestSuite/merged.profdata

# Generate coverage report
llvm-cov show \
    -instr-profile=Ex2ConcTestSuite/merged.profdata \
    $(for f in Ex2ConcTestSuite/test_*.out Ex2ConcTestSuite/crashes/crash_*.out; do echo -object "$f"; done) \
    -sources ../treetable.c \
    > Ex2CodeCoverage.txt
