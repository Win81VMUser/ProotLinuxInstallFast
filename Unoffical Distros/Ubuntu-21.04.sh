##
## Plug-in for installing Ubuntu Hirsute.
##

DISTRO_NAME="Ubuntu 21.04"

# You can override a CPU architecture to let distribution
# be executed by QEMU (user-mode).
#
# You can specify the following values here:
#
#  * aarch64: AArch64 (ARM64, 64bit ARM)
#  * armv7l:  ARM (32bit)
#  * i686:    x86 (32bit)
#  * x86_64:  x86 (64bit)
#
# Default value is set by proot-distro script and is equal
# to the CPU architecture of your device (uname -m).
#DISTRO_ARCH=$(uname -m)

# Returns download URL and SHA-256 of file in this format:
# SHA-256|FILE-NAME
get_download_url() {
	local rootfs
	local sha256

	case "$DISTRO_ARCH" in
		aarch64)
			rootfs="https://partner-images.canonical.com/core/hirsute/current/ubuntu-hirsute-core-cloudimg-arm64-root.tar.gz"
			sha256="47fb9f337441b2ac0b9bd34b557d6aa42419ccbf072f64d091a8acdd9a65532d"
			;;
		armv7l|armv8l)
			rootfs="https://partner-images.canonical.com/core/hirsute/current/ubuntu-hirsute-core-cloudimg-armhf-root.tar.gz"
			sha256="f9aa02ff392b8d2dfe51ab4a7b526c2d1713b41f3fffb48c3c0bbdbbb098be0d"
			;;

		x86_64)
			rootfs="https://partner-images.canonical.com/core/hirsute/current/ubuntu-hirsute-core-cloudimg-amd64-root.tar.gz"
			sha256="c44a203a60ff4315cc76ac6c659a6e48687a832f32a8bf4f99ab4fda345e7590"
			;;
	esac

	echo "${sha256}|${rootfs}"
}

# Define here additional steps which should be executed
# for configuration.
distro_setup() {
	# Hint: $PWD is the distribution rootfs directory.
	#echo "hello world" > ./etc/motd

	# Run command within proot'ed environment with
	# run_proot_cmd function.
	# Uncomment this to do system upgrade during installation.
	#run_proot_cmd apt update
	#run_proot_cmd apt upgrade -yq
	:
}
