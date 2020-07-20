#!/bin/bash
npm init -y
npm i --save-dev jest
npm i --save-dev jest-extended
npm i --save-dev @babel/core
npm i --save-dev @babel/preset-env
echo -e 'module.exports = {\n\t "setupFilesAfterEnv": ["jest-extended"]\n}' > jest.config.js
echo -e '{\n\t"presets": ["@babel/preset-env"]\n}' > .babelrc
sed -i '' 's+"test".*+"test": "jest --watchAll --verbose"+g' package.json