# Build and Deploy Instructions

1. **Create GitHub Repository**
   - Go to GitHub and create a new repository.

2. **Generate SSH Key**
   - Open your terminal and run:
     ```powershell
     ssh-keygen.exe
     ```
   - Press Enter to accept defaults or specify a file name.

3. **Add Public Key to GitHub**
   - Copy the contents of your public key file (e.g., `id_rsa.pub` or the one you generated).
   - Go to your GitHub Account Settings -> **SSH and GPG keys** -> **New SSH key**.
   - Paste the key and save.

4. **Build Jenkins Pipeline**
   - Go to Jenkins and create a new **Pipeline** job.
   - In the pipeline configuration, select **Pipeline script from SCM**.
   - Select **Git** as the SCM.
   - Enter your GitHub repository URL (SSH or HTTPS).
   - If using SSH, ensure the credentials with the private key corresponding to the public key you added to GitHub are configured in Jenkins.
   - Specify the script path as `jenkins/jenkins-pipline/jenkins-docker/build-repo/JenkinsFile` (adjust if the path in repo is different).
   - Save and **Build Now**.

