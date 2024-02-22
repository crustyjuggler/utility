# Utility

Just a repo with some tools.

## jest-setup
#### Bare bones setup script (for Mac) to run npm init, then add jest, jest-extended and babel to a new project. This will create babel.config.js, as well as change the test script in package.json to run jest, and add jest configuration to package.json. Mainly for code kata quick setup.

- Note: Must have jq command line utility installed to execute!!!

	```brew install jq```
- Create a project folder.
  
- From your project folder, execute the following to download jest-setup.sh:
  
	```curl -L https://raw.githubusercontent.com/crustyjuggler/utility/master/jest-setup.sh > jest-setup.sh```
- From you project folder, execute jest-setup:
  
	```./jest-setup.sh```
- If file isn't executable, execute the following, then try again:

	```chmod +x jest-setup.sh```

	or just use the bash command:

	```bash jest-setup.sh```
- That's it, or you can delete jest-setup from your folder if you prefer.