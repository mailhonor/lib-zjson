all: all_test

GPP=g++

GPPFLAGS := -std=gnu++11 -Wall -Winline -I./ -O2 -g -ggdb


TEST_SRCS = $(wildcard *_test.cpp)
TEST_OBJS = $(patsubst %.cpp,%, $(TEST_SRCS))

$(TEST_OBJS):./zcc_json.h ./zcc_json.cpp

$(TEST_OBJS):%:%.cpp
	@echo build $@
	$(GPP) -o $@ $@.cpp zcc_json.cpp $(GPPFLAGS)

all_test:$(TEST_OBJS)

clean:
	rm -f $(TEST_OBJS)
	rm -f tags gmon.out
	find -type f -name "*.o" -exec rm {} \;
	find -type f -name "*~" -exec rm {} \;

