rm -rf *
repo sync
function __print_p404_functions_help() {
cat <<EOF
Additional functions:
- mka:             Builds using SCHED_BATCH on all processors.
- repopick:        Utility to fetch changes from Gerrit.
EOF
}

# Make using all available CPUs
function mka() {
    case `uname -s` in
        Darwin)
            make -j `sysctl hw.ncpu|cut -d" " -f2` "$@"
            ;;
        *)
            schedtool -B -n 1 -e ionice -n 1 make -j `cat /proc/cpuinfo | grep "^processor" | wc -l` "$@"
            ;;
    esac
}

function repopick() {
    set_stuff_for_environment
    T=$(gettop)
    $T/vendor/404/build/tools/repopick.py $@
}

# Builder
export KBUILD_BUILD_USER=xenxynon
export KBUILD_BUILD_HOST=Server
export BUILD_USERNAME=xenxynon
export BUILD_HOSTNAME=Server
