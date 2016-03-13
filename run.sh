#!/bin/bash

NODE_BIN=$(which node);
SED_BIN=$(which sed);
REPLACE="<% varname %>";
VAL=10;
REPLACE_REGEXP="s/${REPLACE}/${VAL}/g";

# pipeline
cat file0.js | $SED_BIN "${REPLACE_REGEXP} | $NODE_BIN;

eval unset{' NODE_BIN;',' SED_BIN;',' REPLACE;',' VAL;',' REPLACE_REGEXP;'};
