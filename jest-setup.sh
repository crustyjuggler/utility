#!/bin/bash

echo 'Creating package.json...'
npm init -y

echo 'Installing jest...'
npm i --save-dev jest

echo 'Installing jest-extended...'
npm i --save-dev jest-extended

echo 'Installing babel...'
npm i --save-dev @babel/core
npm i --save-dev @babel/preset-env

echo 'Creating jest-extended helper...'
echo -e 'module.exports = {\n\t "setupFilesAfterEnv": ["jest-extended"]\n}' > jest.config.js

echo 'Creating .babelrc...'
echo -e '{\n\t"presets": ["@babel/preset-env"]\n}' > .babelrc

echo 'Adding jest script to package.json...'
sed -i '' 's+"test".*+"test": "jest --watchAll --verbose"+g' package.json

echo 'Finished!'