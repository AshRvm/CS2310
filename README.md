# fcsdl-g23
Group 23's projects, for Foundation of Computer Systems Design Lab (CS2310), IITM

# First-time Setup
Install the Git client, preferably CLI.

Check if it is installed: `git --version` (on CMD/PowerShell/Bash)

You'll have to configure your username and user email.<br>
Type:<br>
`git config --global user.name "first-name last-name"`<br>
`git config --global user.email "your-email-here@somewhere.com"`<br>

Now navigate to the directory where you want to work with the repository, and clone it there:<br>
`git clone https://github.com/V3D3/fcsdl-g23.git`

After cloning it, cd into the folder that is just created, and type:<br>
`git status`<br>
to check the status of the repo.

Copy your current Lab-1 project files into lab-1 24-08-2020, then change directory to that folder, and type:<br>
`git add .`

Then:<br>
`git commit -m "Added Encoders: all are tested and functional"`

This will commit the changes to your *local* repository.<br>
Now, push these changes online:<br>
`git push origin master`<br>
Note that you'll have to login to GitHub, use your GitHub credentials.

Or replace the message with something more descriptive, as you see fit.<br>

This guide was a one-time setup.<br>

# Getting changes
To get the latest version of the repository, type:<br>
`git pull origin master`

# Making changes
To upload your code, type:<br>
`git add .`<br>
`git commit -m "<Enter your commit message here>"`<br>
`git push origin master`<br>

The first command adds all files to the staging area.<br>
The second command commits it locally.<br>
The third command syncs these changes to the online repository, so others could get those changes.<br>

# Guidelines
Folder naming convention:<br>
`lab-n dd-mm-yyyy`<br>
n: lab session index, dd-mm-yyyy: date of session

All lab folders have a text file `req.txt`, which contains the requirements to be fulfilled for that lab.

# Test-writer
Test-writer is a tiny script that writes parts of large .tst files conveniently. The functionality will be extended as we progress with the course.<br>
Simply run testwriter.exe, follow the instructions. The source code is in testwriter.c, so you can compile it for other platforms if you wish to, or modify it to be better.
