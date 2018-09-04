#!/usr/bin/env bash

# Download the latest IDE Helper/Meta files
wget https://gist.githubusercontent.com/barryvdh/5227822/raw/_ide_helper.php -O laravel/_ide_helper.php
wget https://gist.githubusercontent.com/barryvdh/bb6ffc5d11e0a75dba67/raw/.phpstorm.meta.php -O laravel/.phpstorm.meta.php

# ZIP the source files to a JAR
cd src
zip -r ../phpstorm-library-plugin.jar *
cd ..
