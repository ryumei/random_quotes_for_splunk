# Makefile for generating Splunk App package
#
VERSION = $(shell git describe --tags)
PREFIX = $(shell basename `pwd`)
TARGET = $(PREFIX).$(VERSION).zip


all: $(TARGET)

dist:
	mkdir dist

.PHONY: test
test:
	PYTHONPATH=bin python bin/test_foobar.py -v

$(TARGET): dist
	git archive --worktree-attributes --prefix=$(PREFIX)/ --format=zip --output=dist/$@ HEAD

