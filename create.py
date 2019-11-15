import sys
import subprocess

def create():
    subprocess.call('''curl -u '{}:{}' https://api.github.com/user/repos -d '{{"name":"{}"}}' '''.format(sys.argv[1],sys.argv[2],sys.argv[3]), shell=True)

if __name__=="__main__":
    create()