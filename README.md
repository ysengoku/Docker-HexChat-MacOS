# Docker HexChat for macOS  

This repository provides a Docker-based environment to run **HexChat** on macOS.  
Since HexChat is no longer supported on macOS, this project enables you to use HexChat via Docker while maintaining a graphical user interface (GUI). It is specifically designed for IRC server testing and related development.   

## Requirements  
Before using this project, ensure you have the following installed on your macOS system:  
- [Docker Desktop](https://www.docker.com/products/docker-desktop)  
- [XQuartz](https://www.xquartz.org/) (for X11 forwarding)  

---  
## 🐳 Getting Started  

### 1. **Clone the repository**  
   ```bash
   git clone https://github.com/ysengoku/Docker-HexChat-MacOS.git
   cd Docker-HexChat-MacOS
   ```

### 2. **Start XQuartz**

Open XQuartz and enable network connections:
- Go to Preferences > Security.
- Check "Allow connections from network clients".

### 3. **Run HexChat in Docker**

```bash
# In the directory containing the Dockerfile:

# Build the Docker image using the Dockerfile in the current directory
docker build -t hexchat-docker .

# Run the HexChat Docker container with GUI support enabled
docker run -e DISPLAY=host.docker.internal:0 --rm hexchat-docker

```

### 4. **Connect HexChat to Your IRC Server**
Use HexChat’s GUI to connect to your server for testing.
- Add a new network and edit Servers to `host.docker.internal:6667`.
- If you use our ft_irc Server, remove the check from `Use SSL for all the servers on this network`.

## 🐳 Stop a Docker Container

To stop a running container, use the following command:

```bash
docker stop hexchat-docker
```

## Notes
- Ensure the DISPLAY environment variable is set correctly for XQuartz.   
- This is designed for macOS and may not work properly on other operating systems.
