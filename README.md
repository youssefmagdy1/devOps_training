# devOps_training
  This repositry is devops training @fawry 
### session 1
  the fisrt session was had three tasks 
  1. **checkOS task** 
    I check for the os system type if it is windows or Linux or macOS then for the distribution of Linux (because each dist. has its commands ),
	I write it to install vim editor, but I had it difficult to install it in windows.
  2. **checkMaster**
    to check if the local repo needs an update or note.
  3. **yaml_parser**
    python file that can parse the yaml field to read, edit, and add new var to the file.
 
### session 2 
  session 2 have only one task that is to install wordPress with docker compose just by running the bash script.
  the script first check linux os distribution then download  docker and docker compose if it wasn't there.
  after that is clone the yaml file from the repo to lanuch docker compose with.
  finaly it makse _docker compose up -d_ command
  
### session 3 
  session 3 was had 2 tasks
   1. **Check Services on docker compose**
      first it get all the services that are running by docker compose _docker compose ps --services_
      then for each service gets its id and name 
        after that make a curl to the service by the ip, if the status code is ok then print done, else restart the service.
   2. **kill proc**
   		the script is work by pass the process name to the script 
   		first list all the process that is running, then grep all the process that have that name, finaly kill it by _xargs kill_ 
		
		
### session 4 
	this session's task was to write a script that watch the log file and if it faced a custom word like "Error", it noitfy the user by write the date 
	the error waw found .\n 
	the tail command with -
