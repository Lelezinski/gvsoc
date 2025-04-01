###################################################################################
# This script is used to run the gvsoc simulator with the pk binary and a program.
###################################################################################

GVSOC_DIR=/home/lelez/gvsoc/
PROGRAM="./examples/hello"
TARGET=rv64

# Build the gvsoc target
echo "Building gvsoc target..."
cd $GVSOC_DIR
source ./sourceme.sh
#make clean
make TARGET=$TARGET all

# Run gvsoc
echo "Running gvsoc..."
cd $GVSOC_DIR
gvsoc --target=$TARGET --binary examples/pk --arg $PROGRAM run
