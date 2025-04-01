###################################################################################
# This script is used to run the gvsoc simulator with the pk binary and a program.
###################################################################################

GVSOC_DIR=/home/lelez/gvsoc/
PROGRAM="./examples/hello_rv64/build/program.elf"
PROGRAM_MAKE_DIR="./examples/hello_rv64"

# Build the gvsoc target
echo "Building gvsoc target..."
cd $GVSOC_DIR
source ./sourceme.sh
#make clean
make TARGET=rv64 all

# Compile the program
echo "Compiling the program..."
cd $PROGRAM_MAKE_DIR
make clean
make all

# Run gvsoc
echo "Running gvsoc..."
cd $GVSOC_DIR
gvsoc --target=rv64 --binary examples/pk --arg $PROGRAM run
