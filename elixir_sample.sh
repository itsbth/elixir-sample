#!/bin/bash
cd /application
/usr/local/bin/mix run --no-halt -e 'Cauldron.start ElixirSample, port: 5000'
