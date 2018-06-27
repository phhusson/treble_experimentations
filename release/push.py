#!/usr/bin/python3

from github import Github
from configparser import ConfigParser
import os
import sys

selfpath = os.path.dirname(sys.argv[0])
config = ConfigParser()
config.read(os.path.join(selfpath, "config.ini"))

g = Github(config['github']['token'])

repo = g.get_user().get_repo("treble_experimentations")

release = repo.create_git_release(sys.argv[2], sys.argv[1] + " " + sys.argv[2], "Automatic release", draft = True)
print("Made release " + str(release))
folder = sys.argv[3]
for f in os.listdir(folder):
    path = os.path.join(folder, f)
    if not os.path.isfile(path):
        continue
    release.upload_asset(path)
