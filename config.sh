# Define custom utilities
# Test for macOS with [ -n "$IS_MACOS" ]

function pre_build {
    # Any stuff that you need to do before you start building the wheels
    # Runs in the root directory of this repository.
    echo "pre_build ..........................."
    local cmake=$(get_modern_cmake)
    echo "cmake=$cmake"
}

function run_tests {
    echo "run_tests ..........................."
    # Runs tests on installed distribution from an empty directory
    python --version
    python -c 'import sys; import pinpointPy;'
}
