# Set current directory
CURR_DIR=$(pwd)

# Download Coreboot
if [ ! -d "coreboot" ]; then
	git clone https://review.coreboot.org/coreboot
fi

cd $CURR_DIR/coreboot

# Update Coreboot
git pull
git submodule update --init --checkout

# Build Toolchains for compiling to x230
make crossgcc-x64 CPU=$(nproc)

# Create folders for blobs
cd $CURR_DIR
mkdir -p coreboot/3rdparty/blobs/mainboard/lenovo/x230
