FROM ubuntu:latest
COPY wild.py /
RUN apt update -y
#RUN apt install python3-pip git curl wget node-hawk node-minimist azure-storage-blob -y
#RUN pip3 --no-cache-dir install --upgrade awscli boto3
RUN apt install git curl wget node-hawk node-minimist azure-storage-blob -y
RUN apt install python3-boto3 -y
#RUN pip3 install gitpython azure-identity azure-storage-blob
RUN apt install python3-git python3-gitpython python3-azure-identity python3-azure-storage-blob -y 
#RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash   
EXPOSE 8080 
ENTRYPOINT [ "python3", "wild.py"]
#comment123
