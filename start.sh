#!/bin/sh

ssh -N -R $REMOTE_PORT $SSH_USER@$SSH_HOST -p $SSH_PORT
