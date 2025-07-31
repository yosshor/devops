# DevOps Course Project

This repository contains a comprehensive collection of DevOps tools, practices, and infrastructure as code examples. It serves as a learning platform for various DevOps concepts including virtualization, automation, CI/CD, and infrastructure management.

## 📁 Project Structure

```
DevopsCourse/
├── vagrant-vms/
│   ├── centos/                    # CentOS VM setup
│   ├── ubuntu/                    # Ubuntu VM setup
│   ├── ubuntu-dev/                # Ubuntu development environment
│   ├── finance/                   # Finance application VM
│   ├── financeIAC/                # Finance app with Infrastructure as Code
│   ├── multiVM/                   # Multi-VM environment setup
│   ├── wordpress/                 # WordPress application VM
│   ├── wordpressIAC/              # WordPress with Infrastructure as Code
│   └── vprofile-project/          # Complete microservices application
│       ├── ansible/               # Ansible automation scripts
│       ├── vagrant/               # VM provisioning scripts
│       └── src/                   # Java application source code
```

## 🚀 Getting Started

### Prerequisites

- [Vagrant](https://www.vagrantup.com/downloads) (2.2.0 or higher)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) (6.0 or higher)
- [Git](https://git-scm.com/downloads)

### Quick Start

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd DevopsCourse
   ```

2. **Choose a VM to start:**
   ```bash
   cd vagrant-vms/ubuntu
   vagrant up
   ```

3. **Access your VM:**
   ```bash
   vagrant ssh
   ```

## 🏗️ Available Virtual Machines

### Basic VMs
- **`centos/`** - CentOS 7/8 VM with basic setup
- **`ubuntu/`** - Ubuntu 18.04/20.04 VM with basic setup
- **`ubuntu-dev/`** - Ubuntu development environment with development tools

### Application VMs
- **`finance/`** - Finance application with manual setup
- **`financeIAC/`** - Finance application with automated provisioning
- **`wordpress/`** - WordPress application with manual setup
- **`wordpressIAC/`** - WordPress application with automated provisioning

### Advanced Projects
- **`multiVM/`** - Multi-VM environment for complex setups
- **`vprofile-project/`** - Complete microservices application with:
  - Java Spring Boot application
  - Ansible automation
  - Multi-tier architecture (Web, App, Database, Cache, Message Queue)

## 🛠️ VProfile Project - Complete Microservices Application

The `vprofile-project/` is a comprehensive example showcasing:

### Architecture
- **Web Tier**: Nginx load balancer
- **Application Tier**: Tomcat with Spring Boot application
- **Database Tier**: MySQL database
- **Cache Tier**: Memcached
- **Message Queue**: RabbitMQ
- **Search**: Elasticsearch

### Features
- **Automated Provisioning**: Ansible playbooks for infrastructure setup
- **CI/CD Pipeline**: Jenkins pipeline configuration
- **Monitoring**: Application monitoring and logging
- **Security**: User authentication and authorization

### Setup Instructions

1. **Navigate to the project:**
   ```bash
   cd vagrant-vms/vprofile-project
   ```

2. **Choose your setup method:**

   **For Windows/Mac Intel:**
   ```bash
   cd vagrant/Automated_provisioning_WinMacIntel
   vagrant up
   ```

   **For Mac M1/M2:**
   ```bash
   cd vagrant/Automated_provisioning_MacOSM1
   vagrant up
   ```

3. **Access the application:**
   - Web Application: http://localhost:8080
   - Jenkins: http://localhost:8081
   - Database: localhost:3306

## 🔧 Infrastructure as Code (IAC)

This project demonstrates various IAC patterns:

### Vagrant
- VM provisioning and configuration
- Multi-VM environments
- Automated setup scripts

### Ansible
- Configuration management
- Application deployment
- Multi-server orchestration

### Jenkins
- CI/CD pipeline automation
- Build and deployment automation
- Integration with various tools

## 📚 Learning Path

### Beginner Level
1. Start with `ubuntu/` or `centos/` for basic VM concepts
2. Explore `wordpress/` for application deployment
3. Learn `financeIAC/` for basic automation

### Intermediate Level
1. Study `multiVM/` for complex environments
2. Understand `vprofile-project/` architecture
3. Practice with Ansible playbooks

### Advanced Level
1. Customize and extend the vprofile application
2. Implement additional monitoring and logging
3. Add security hardening and compliance

## 🛡️ Security Considerations

- SSH keys and certificates are excluded from version control
- Sensitive configuration files are properly managed
- Application credentials should be stored securely
- Network security groups and firewall rules are implemented

## 📝 Best Practices

### Version Control
- Use meaningful commit messages
- Keep sensitive data out of repositories
- Document configuration changes

### Infrastructure
- Use Infrastructure as Code for reproducibility
- Implement proper backup strategies
- Monitor and log all activities

### Development
- Follow coding standards and conventions
- Implement proper testing strategies
- Use CI/CD pipelines for deployment

## 🔍 Troubleshooting

### Common Issues

1. **Vagrant VM won't start:**
   ```bash
   vagrant destroy
   vagrant up
   ```

2. **Port conflicts:**
   - Check if ports 8080, 8081, 3306 are available
   - Modify Vagrantfile to use different ports

3. **Memory issues:**
   - Increase VM memory in Vagrantfile
   - Close unnecessary applications

4. **Network connectivity:**
   - Check VirtualBox network settings
   - Verify firewall configurations

### Getting Help

- Check the documentation in each VM directory
- Review the setup PDFs in the vagrant directories
- Examine the Ansible playbooks for configuration details

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is for educational purposes. Please refer to individual component licenses for specific usage rights.

## 🙏 Acknowledgments

- VirtualBox for virtualization platform
- HashiCorp for Vagrant
- Red Hat for Ansible
- Jenkins community for CI/CD tools
- Spring Boot community for the application framework

---

**Happy Learning! 🚀**

For questions or issues, please check the documentation in each VM directory or create an issue in the repository. 