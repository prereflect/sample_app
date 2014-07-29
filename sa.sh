#!/bin/bash
 
cd  ~/rails_projects/sample_app/
   
tmux start-server
tmux new-session -d -s sa -n root
tmux new-window -t sa:2 -n console
tmux new-window -t sa:3 -n config
tmux new-window -t sa:4 -n views
tmux new-window -t sa:5 -n controllers
tmux new-window -t sa:6 -n spec
tmux new-window -t sa:7 -n webrick 
tmux new-window -t sa:8 -n git
tmux new-window -t sa:9 -n log
   
tmux send-keys -t sa:2 "rails c --sandbox" C-m
tmux send-keys -t sa:3 "cd config/; ls -la" C-m
tmux send-keys -t sa:4 "cd app/views/; ls -la" C-m
tmux send-keys -t sa:5 "cd app/controllers/; ls -la" C-m
tmux send-keys -t sa:6 "cd spec/; ls -la" C-m
tmux send-keys -t sa:7 "rails s" C-m
tmux send-keys -t sa:8 "git status" C-m
tmux send-keys -t sa:9 "cd log/" C-m
   
tmux select-window -t sa:8
tmux attach-session -t sa
