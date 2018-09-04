#!/usr/bin/env bash

# Export variables
export LARAVEL_DIRECTORY='src/laravel'

# Download the latest IDE Helper/Meta files
wget https://gist.githubusercontent.com/barryvdh/5227822/raw/_ide_helper.php -O ${LARAVEL_DIRECTORY}/_ide_helper.php
wget https://gist.githubusercontent.com/barryvdh/bb6ffc5d11e0a75dba67/raw/.phpstorm.meta.php -O ${LARAVEL_DIRECTORY}/.phpstorm.meta.php

# ZIP the source files to a JAR
cd src
zip -r ../phpstorm-library-plugin.jar *
cd ..
