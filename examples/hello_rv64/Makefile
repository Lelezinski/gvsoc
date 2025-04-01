# Toolchain
CC = riscv64-unknown-elf-gcc
CFLAGS = -march=rv64gc -mabi=lp64d -nostartfiles -O2 -Iinclude
LDFLAGS = 

# Directories
SRC_DIR = src
BUILD_DIR = build

# Source and Object Files
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

# Target Executable
TARGET = $(BUILD_DIR)/program.elf

# Build Rules
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

# Compile source files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Ensure build directory exists
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Clean Rule
clean:
	rm -rf $(BUILD_DIR)
