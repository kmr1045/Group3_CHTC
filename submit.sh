#!/bin/bash

rm -rf log output error
mkdir -p log output error

condor_submit_dag words.dag
