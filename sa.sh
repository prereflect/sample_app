#!/bin/bash
 
cd  ~/rails_projects/sample_app/
   
tmux start-server
tmux new-session -d -s sa -n root
tmux new-window -t sa:2 -n config
tmux new-window -t sa:3 -n views
tmux new-window -t sa:4 -n controllers
tmux new-window -t sa:5 -n spec
tmux new-window -t sa:6 -n guard
tmux new-window -t sa:7 -n log
tmux new-window -t sa:8 -n webrick 
tmux new-window -t sa:9 -n git
   
tmux send-keys -t sa:2 "cd config/; ls -la" C-m
tmux send-keys -t sa:3 "cd app/views/; ls -la" C-m
tmux send-keys -t sa:4 "cd app/controllers/; ls -la" C-m
tmux send-keys -t sa:5 "cd spec/; ls -la" C-m
tmux send-keys -t sa:6 "guard" C-m
tmux send-keys -t sa:7 "cd log/; ls -la" C-m
tmux send-keys -t sa:8 "rails s" C-m
tmux send-keys -t sa:9 "git status" C-m
   
tmux select-window -t sa:9
tmux attach-session -t sa
