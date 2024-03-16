# DevopsProject1

The project establishes a continuous integration and delivery (CI/CD) pipeline using GitHub for code management and the following tools: 
1. **Jenkins**: For continuous integration.
2. **SonarQube**: For code analysis.
3. **Docker**: For containerization.
4. **EC2 instances**: For hosting the services.

**Pipeline Flow**: Github -> Jenkins -> Sonarqube -> Jenkins -> Docker

**Description**:
1. Code changes are pushed to GitHub. 
2. Jenkins pulls the updated code from GitHub using webhook. 
3. SonarQube analyzes the code for quality issues. 
4. Jenkins retrieves the results from SonarQube. 
5. Docker builds and packages the code into a container image.

**Step 1: Setting Up EC2 Instances**:
- Launch instances for Jenkins, SonarQube and Docker
- Configure security groups and keys. make sure to open the required ports.
- SSH into instances for setup
**Step 2: Installing and Configuring Jenkins:**
- Update system and install Java environment(dependency for jenkins)
- Install Jenkins and required plugins, also allow port 8080
- Create and configure Jenkins project.
**Step 3: SonarQube Integration and Code Analysis:**
- Install SonarQube on EC2 instance.
- Integrate SonarQube with Jenkins.
- Analyze code and check for pass status.
**Step 4: Docker Setup and Deployment:**
- Install Docker on EC2 instance
- Integrate docker server with jenkins server.
- Automatically build Docker image using Dockerfile and run container.
- Make sure to check the connectivity between jenkins and ubuntu server is passwordless. Use ssh keys to configure the same.
- Deploy website and verify functionality.
