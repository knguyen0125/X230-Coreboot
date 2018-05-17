# Set current directory
CURR_DIR=$(pwd)

# Download Flashrom
if [ ! -d "flashrom" ]; then
	git clone https://github.com/flashrom/flashrom
fi

cd $CURR_DIR/flashrom
# Update to latest version
git pull
# Compile Flashrom
make
