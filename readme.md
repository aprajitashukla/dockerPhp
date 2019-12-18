
# Docker for PHP

  

## Docker for a basic PHP Hello world app:

In this project we make a basic hello world app and its volume to reflect changes readily on the browser.

  

## Purpose:

During development, having to build a container each time you make a change is a problem. You would want to save your changes and see them readily.

## Steps:  

### To build the image:

Open terminal from the dockerPhp folder and run ` build -t hello-world .`

  
  

### To build the container from image:

Then run `docker run -p 80:80 hello-world`

Navigate to localhost

  

**NOTE**: If port 80 doesn't work, change the port number both - in the Dockerfile and the above command.

  
  

### To See the changes:

1. Change the text form "Hello World" to "Nice to meet you" and save it.

2. Navigate to localhost to see the change has not been reflected.

3. Go to terminal and run `docker run -p 80:80 -v <absolute path of the Dockerfile>:/var/www/html hello-world` to mount the files on the docker.

4. Navigate to localhost and refresh to see the changed text.

  
  

### Debugging help:
1. Make sure you are not working on Windows. It can get messy very fast. I used Ubuntu 18.04. Install a VM if need be.

2. If you are **unable to build the container** then:
- Make sure the command is entered correctly.
- Make sure the path points to the Dockerile and not the folder that the Dockerfile is in.
- If the port is not free, change the port number and try again refer the **NOTE**.

3. If you are **unable to run the container** then:
- Sometimes it works with `sudo` access

4. If there are **Browser issues**:
- Try to inspect using `right click -> inspect` 
- Mention index.php in the path itself.