" Adds git-pair initials to the status line.
" For more info on git-pair, see <https://github.com/pivotal/git_scripts>.
" (Requires a version that stores user.initials, such as
" <https://github.com/Peeja/git_scripts>.
if exists("loaded_git_pair")
    finish
endif
let loaded_git_pair = 1

let s:git_pair_initials = "%{git_pair#statusline()}"

if &statusline == ""
  set statusline=%<%f\ %h%m%r%=
end

if match(&statusline, s:git_pair_initials) == -1
  let &statusline = &statusline . s:git_pair_initials
end
