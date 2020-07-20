# Utility

Just a repo with some tools.

## jest-setup
### Bare bones setup script to run npm init, then add jest, jest-extended and babel to a new project. This will create jest.config.js and .babelrc files, as well as change the test script in package.json to run jest. Mainly for code kata quick setup.
- Execute the following to download jest-setup.sh into your project folder:
  
	```curl -L https://raw.githubusercontent.com/crustyjuggler/utility/master/jest-setup.sh > jest-setup.sh```
- Execute jest-setup in the project folder you will be using.
  
	```./jest-setup.sh```
- If file isn't executable, execute the following, then try again:

	```chmod +x jest-setup.sh```

	or just use the bash command:

	```bash jest-setup.sh```
- That's it, or you can delete jest-setup from your folder if you prefer.