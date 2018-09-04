#!/usr/bin/env bash

# Export variables
export LARAVEL_DIRECTORY='src/laravel'

# Download the latest IDE Helper/Meta files
wget https://git.io/fA4pE -O ${LARAVEL_DIRECTORY}/_ide_helper.php
wget https://git.io/fA4pz -O ${LARAVEL_DIRECTORY}/.phpstorm.meta.php

# ZIP the source files to a JAR
cd src
zip -r ../phpstorm-library-plugin.jar *
cd ..
