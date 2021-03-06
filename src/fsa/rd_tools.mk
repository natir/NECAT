ifeq "$(strip ${BUILD_DIR})" ""
  BUILD_DIR    := ../$(OSTYPE)-$(MACHINETYPE)/obj
endif
ifeq "$(strip ${TARGET_DIR})" ""
  TARGET_DIR   := ../$(OSTYPE)-$(MACHINETYPE)/bin
endif

TARGET   := fsa_rd_tools
SOURCES  := ./prog/fsa_rd_tools.cpp read_tools.cpp

SRC_INCDIRS  := . 
TGT_CXXFLAGS := -U_GLIBCXX_PARALLEL -std=c++11 -Wall -O3 -D_FILE_OFFSET_BITS=64 ${CXXFLAGS}

TGT_LDFLAGS := -L${TARGET_DIR}
TGT_LDLIBS  := -lfsa -lz
TGT_PREREQS := libfsa.a

SUBMAKEFILES :=
