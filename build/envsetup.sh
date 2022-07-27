rm -rf * .repo*
repo init --depth=1 --no-repo-verify -u https://github.com/P-404/android_manifest -b shinka -g default,-mips,-darwin,-notdefault
git clone https://github.com/xenxynon-lab-404/manifest --depth=1 -b 404 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)

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
export KBUILD_BUILD_HOST=xenxynon
export BUILD_USERNAME=xenxynon
export BUILD_HOSTNAME=xenxynon
