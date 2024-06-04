# Directorys
BUILD_DIR = build
CLEAN += $(BUILD_DIR)/

OBJ_DIR = $(BUILD_DIR)/obj-$(NAME)-$(VERSION)
OBJS = $(CC_SRCS:%.c=$(OBJ_DIR)/%.o) $(CXXSRCS:%.cc=$(OBJ_DIR)/%.o)

BINARY = $(BUILD_DIR)/$(NAME)-$(VERSION)


# Compilers
ifeq ($(CC),clang)
CXX = clang++
else
CXX = g++
endif
LD = $(CXX)


# Compile rules
INCLUDES  = $(addprefix -I, $(INC_PATH))

C_SETS   = $($(VERSION)_C_SETS) -MMD -c -Wall -Werror
LDSETS   = $($(VERSION)_LDSETS)

CC_STD   = --std=c11
CXXSTD   = --std=c++20

CC_FLAGS     = $(LDSETS) $(C_SETS) $(INCLUDES) $(CC_STD)
CXXFLAGS     = $(LDSETS) $(C_SETS) $(INCLUDES) $(CXXSTD)
LDFLAGS      = $(LDSETS)

-include $(OBJS:%.o=%.d)

$(OBJ_DIR)/%.o: %.c
	@echo '+ CC $<'
	@mkdir -p $(dir $@)
	@$(CC) $(CC_FLAGS) -o $@ $<

$(OBJ_DIR)/%.o: %.cc
	@echo '+ CXX $<'
	@mkdir -p $(dir $@)
	@$(CXX) $(CXXFLAGS) -o $@ $<


# Link rules
$(BINARY): $(OBJS)
	@echo '+ LD $(OBJS)'
	@mkdir -p $(dir $@)
	@$(LD) $(LDFLAGS) -o $@ $(OBJS)

