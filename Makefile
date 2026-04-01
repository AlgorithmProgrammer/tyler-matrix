# --- Compiler Settings ---

CXX      := g++
CXXFLAGS := -std=c++26 -Wall -Wextra -Wpedantic -O3 -I./include -I./tests

# --- Files ---

TARGET   := run_tests
SRC      := tests/catch_amalgamated.cpp tests/test_matrix.cpp

# --- Rules ---

all: $(TARGET)

$(TARGET): $(SRC)
		$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

test: all
		./$(TARGET)

clean:
		rm -f $(TARGET) *.o

.PHONY: all test clean