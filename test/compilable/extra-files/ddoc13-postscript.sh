#!/usr/bin/env bash

grep -v "Generated by Ddoc from" ${RESULTS_DIR}/compilable/ddoc13.html > ${RESULTS_DIR}/compilable/ddoc13.html.2
diff --strip-trailing-cr compilable/extra-files/ddoc13.html ${RESULTS_DIR}/compilable/ddoc13.html.2
if [ $? -ne 0 ]; then
    exit 1;
fi

rm ${RESULTS_DIR}/compilable/ddoc13.html{,.2}

