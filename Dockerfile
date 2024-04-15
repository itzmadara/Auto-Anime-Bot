FROM python:3.11

# Update package lists and install python3-libtorrent without sudo
RUN apt-get update && apt-get install -y python3-libtorrent

# Install Python dependencies
RUN python3 -m pip install -U -r requirements.txt 

# Set the command to run your application
CMD [ "python3" , "-m AAB"]
