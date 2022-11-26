#!/bin/bash
set -exu
docker build --tag pedro/oru-dgx -f Dockerfile ./
