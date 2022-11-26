#!/bin/bash
set -exu
docker build --tag local/oru-dgx -f Dockerfile ./
