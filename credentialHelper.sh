#CREDENTIAL HELPER: 

#Once you have set up a token in the GitHub website, you will be prompted for your username and password (the token) every time you want to push something to github from your machine. 
#Remember, that the token is the long password given below whatever token name that you chose. 

#This is why it is a good idea to setup a Credential helper. 

#Do the following command to create a credential helper
   nano credential-helper.sh #in the directory Users/ernievilela , 
  #The following are the contents of  credential-helper.sh
  
################
#!/bin/bash
echo username=$GIT_USERNAME
echo password=$GIT_PASSWORD

##this will redirect the prompts of USERNAME and PASSWORD to the aliases found in the ./bashrc file that have that information:

##git token
export GIT_PASSWORD="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"
export GIT_USERNAME="ErnieVc"
###############

#After you do this, you can proceed with your normal commands and use git. 
#Whenever you use git, you will not be promted to put in the username or password. Th helper will execute automatically. 

#you may proceed to your derectory and do the usual 

cd Desktop/Data_Course_VILELA2
git add README.md
git commit -m "1st commit git"
git push

  #random note: ./bashrc is found in the Users/ernievilela
#THE END. 
