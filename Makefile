# THE NAME OF YOUR EXECUTABLE
TARGET = regex_to_verilog
# ALL CPP IMPLEMENTATION FILES THAT MAKE UP THE PROJECT
SRC_FILES = src/automata_to_verilog.cpp src/regex_to_automata/regex_to_automata.cpp src/regex_to_automata/RETranslator.cpp src/regex_to_automata/Scanner.cpp src/regex_to_automata/CFG.cpp src/regex_to_automata/NFA.cpp src/regex_to_automata/DFA.cpp src/regex_to_automata/utilities.cpp

# NO EDITS NEEDED BELOW THIS LINE

CXX = g++
CFLAGS = -Wall -g -std=c++17

OBJECTS = $(SRC_FILES:.cpp=.o)

ifeq ($(shell echo "Windows"), "Windows")
    TARGET := $(TARGET).exe
    DEL = del
else
    DEL = rm
endif

all: $(TARGET)

debug: CFLAGS += -DDEBUG
debug: clean $(TARGET)

release: CFLAGS += -O3
release: clean $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) -o $@ $^

.cpp.o:
	$(CXX) $(CFLAGS) -o $@ -c $<

clean:
	$(DEL) $(TARGET) $(OBJECTS)

# DEPENDENCIES
automata_to_verilog.o: automata_to_verilog.cpp automata.h
regex_to_automata.o: regex_to_automata.cpp RETranslator.h Scanner.h CFG.h utilities.h
RETranslator.o: RETranslator.cpp RETranslator.h CFG.h NFA.h
Scanner.o: Scanner.cpp Scanner.h utilities.h
CFG.o: CFG.cpp CFG.h utilities.h
NFA.o: NFA.cpp NFA.h utilities.h
DFA.o: DFA.cpp DFA.h
utilities.o: utilities.cpp utilities.h