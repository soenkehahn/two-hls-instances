#!/usr/bin/env bash

echo starting vscode on an existing file
code -n src/Main.hs
sleep 10
echo this shows only one process on my machine:
ps aux | grep haskell-language-server | grep -v grep
echo opening a non-existing haskell module file with vscode
code src/New.hs
sleep 10
echo this now shows two processes on my machine:
ps aux | grep haskell-language-server | grep -v grep
