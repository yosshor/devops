from fabric import *


def greeting(msg):
  print("Good {}".format(msg))

def system_info():
  print("Disk Space")
  local("df -h")

  print("RAM size")
  local("free -m")
  print("System uptime.")
  local("uptime")


if __name__ == "__main__":
  greeting("Good Morning")
  system_info()
