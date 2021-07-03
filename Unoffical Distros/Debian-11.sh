##
## Plug-in for installing Debian 11 (Bullseye).
##

DISTRO_NAME="Debian 11 (Bullseye)"

# Rootfs is in subdirectory.
DISTRO_TARBALL_STRIP_OPT=1

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
	local deb_arch
	local sha256

	case "$DISTRO_ARCH" in
		aarch64)
			deb_arch="arm64"
			sha256="d9da1729a6c6a99a9c0c611bb741fe3200c67b59b42db752ad2cbf3aa717ba7b"
			;;
		armv7l|armv8l)
			deb_arch="armhf"
			sha256="faddf68115ddd9fb44e3f6aec353462ecac465f7a9313257d30f31d2dc917a45"
			;;
		i686)
			deb_arch="i386"
			sha256="889fd45058dd306c1bbc8ca63f66e95f41e8b6d8d69784265593fa4063504c0d"
			;;
		x86_64)
			deb_arch="amd64"
			sha256="1dcf1d6da4b2b5b8111a3d84cfa728a370615c6389ffb468f14410073e6a7ca5"
			;;
	esac

	echo "${sha256}|http://uk.images.linuxcontainers.org/images/debian/sid/${deb_arch}/default/20210702_05:24/rootfs.tar.xz"
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
debian-sid.sh
2 KB
