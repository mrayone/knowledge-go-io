#!/bin/sh

go install -v github.com/go-critic/go-critic/cmd/gocritic@latest

cp -i ./scripts/pre-commit.sh ./.git/hooks/pre-commit
cp -i ./scripts/pre-push.sh ./.git/hooks/pre-push

chmod 755 ./.git/hooks/pre-commit
chmod 755 ./.git/hooks/pre-push
