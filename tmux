# remap prefix to Control + a
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# smart pane switching with awareness of vim splits
bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-h) || tmux select-pane -L"
bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-j) || tmux select-pane -D"
bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-k) || tmux select-pane -U"
bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-l) || tmux select-pane -R"

# unbind ctrl-\ so it can be used in vim for ctrl-p pasting
unbind ^\

# user vim keybindings in copy mode
setw -g mode-keys vi

# setup 'v' to begin selection as in vim
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

# update default binding of 'enter' to also use copy-pipe
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

# Need SIMBL & MouseTerm installed for this to work
# toggle mouse mode on with prefix m
bind m \
  set -g mode-mouse on \;\
  set -g mouse-resize-pane on \;\
  set -g mouse-select-pane on \;\
  set -g mouse-select-window on \;\

# toggle mouse mode off with prefix M
bind M \
  set -g mode-mouse off \;\
  set -g mouse-resize-pane off \;\
  set -g mouse-select-pane off \;\
  set -g mouse-select-window off \;\

