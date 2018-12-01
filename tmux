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

# tell tmux to use the system clipboard
set-option -g default-command "reattach-to-user-namespace -l bash"

# setup 'v' to begin selection as in vim
bind-key -T copy-mode-vi v send -X begin-selection
bind-key -T copy-mode-vi y send -X copy-pipe "reattach-to-user-namespace pbcopy"

# update default binding of 'enter' to also use copy-pipe
unbind -T copy-mode-vi Enter
bind-key -T copy-mode-vi Enter send -X copy-pipe "reattach-to-user-namespace pbcopy"

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

# List of plugins
# Supports `github_username/repo` or full git repo URLs
set -g @tpm_plugins '              \
  tmux-plugins/tpm                 \
  tmux-plugins/tmux-resurrect      \
  tmux-plugins/tmux-continuum      \
'

# Other examples:
# github_username/plugin_name    \
# git@github.com/user/plugin     \
# git@bitbucket.com/user/plugin  \

# initializes the TMUX plugin manager
# keep this line at the very bottom of tmux.conf
run-shell '~/.tmux/plugins/tpm/tpm'

