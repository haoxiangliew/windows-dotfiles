#!/usr/bin/env bash

git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"
echo 'pinentry-program "/mnt/c/Program Files (x86)/GnuPG/bin/pinentry-basic.exe"' >> ~/.gnupg/gpg-agent.conf
