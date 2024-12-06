The commands below may not be needed as the dommands were already done during the boot strapping of the vagrant image.


To run this app directly on your system, use the following commands:

```bash
# NOTE: You may need to use 'sudo' to install the dependencies globally
pip3 install -r requirements.txt

python3 app.py
```
Credits to the tutorial made by Raghav Dua
https://www.youtube.com/watch?v=UxJsBW7nYfo


Build Commands and Flow Activity.

1. Download the sample application from Github (Available in /vagrant_data in the image.)

2. copy to the /vagrant_data/application to /home/vagrant/application.

cp -r /vagrant_data/application/ /home/vagrant/application

3. Run the sample application to check if the Vagrant env is ready and if the App is running correctly.
    vim app.py
    vim requirements.txt
    python3 app.py

    after running the commands curl the application by using another terminal accesing the vagrant env. using the commands.
    curl localhost:5000

4. Create the Docker image.
    create a dockerfile.

    docker images
    docker build -t hello_app:latest .


5. Push the Image to dockerhub repository. (Optional)
    docker push duaraghav8/hello-app:tagname (latest)
    https://www.youtube.com/watch?v=UxJsBW7nYfo&t=344s

6. Pull the image from Docker hub. (Optional)
    (Repo is provided by the original Tutorial )

7. Run the Container.
    docker run -p 8080:5000 hello_app:latest 
    detach option.
    docker run -d -p 8080:5000 hello_app:latest  

8. Check the running Docker app.
    docker ps

9. Check the running container as published by docker on port 8080.
    on another terminal.
    curl localhost:8080

    the running application can also be reached via the exposed IP of the vagrant ENV (see the provisioning logs.)
    curl 192.168.11.51:8080

10. Inspect the docker image.
    docker ps
        Note the CONTAINER ID 
    docker inspect (CONTAINER ID)

    docker inspect 235068e97333 >>inspect.txt
    docker inspect 235068e97333 | vim -

11. explore the docker container. this will enter the docker image in bash like logging in to a linux server.

    docker exec -it (CONTAINER ID) bash
    docker exec -it 235068e97333 bash

12. push new changes.
    Create changes to code.
    insert the following code on app.py below "Hello world" statement.

    @app.route("/ping")
    def pong():
        return "PONG"

    




