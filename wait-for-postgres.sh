#!/bin/bash
until nc -w 1 db 5432 < /dev/null; do sleep 2; done
