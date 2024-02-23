#!/bin/bash

echo 'Creating package.json...'
npm init -y

echo 'Installing jest...'
npm i --save-dev jest

echo 'Installing jest-extended...'
npm i --save-dev jest-extended

echo 'Installing babel...'
npm install --save-dev babel-jest @babel/core @babel/preset-env

echo 'Creating Babel config...'
echo -e 'module.exports = {\n\t"presets": [["@babel/preset-env", {targets: {node: "current"}}]],\n};' > babel.config.js

echo 'Adding jest script to package.json...'
sed -i '' 's+"test".*+"test": "jest --watchAll --verbose"+g' package.json

echo 'Adding jest config to package.json...'
cat package.json | jq '. += {"jest": {"setupFilesAfterEnv": ["jest-extended/all"]}}' > temp.json
cat temp.json > package.json
rm -rf temp.json

echo 'Finished!'