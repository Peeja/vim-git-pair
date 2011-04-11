function git_pair#statusline()
  return system('git config user.initials')[:-2]
endfunction
