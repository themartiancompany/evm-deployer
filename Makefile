#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
_PROJECT=evm-deployer
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/$(_PROJECT)
BIN_DIR=$(DESTDIR)$(PREFIX)/bin
LIB_DIR=$(DESTDIR)$(PREFIX)/lib/$(_PROJECT)
MAN_DIR?=$(DESTDIR)$(PREFIX)/share/man

_INSTALL_FILE=\
  install \
    -vDm644
_INSTALL_DIR=\
  install \
    -vdm755
_INSTALL_EXE=\
  install \
    -vDm755


DOC_FILES=$(wildcard *.rst)
SCRIPT_FILES=$(wildcard $(_PROJECT)/*)

all:

check: shellcheck

shellcheck:
	shellcheck -s bash $(SCRIPT_FILES)

install: install-scripts install-doc install-man

install-scripts:

	$(_INSTALL_EXE) \
	  "$(_PROJECT)/$(_PROJECT)" \
	  "$(BIN_DIR)/$(_PROJECT)"
	$(_INSTALL_EXE) \
	  "$(_PROJECT)/deployer" \
	  "$(LIB_DIR)/deployer"

install-doc:

	$(_INSTALL_FILE) \
	  $(DOC_FILES) \
	  -t \
	  $(DOC_DIR)

install-man:

	$(_INSTALL_DIR) \
	  "$(MAN_DIR)/man1"
	rst2man \
	  "man/$(_PROJECT).1.rst" \
	  "$(MAN_DIR)/man1/$(_PROJECT).1"

.PHONY: check install install-doc install-man install-scripts shellcheck
