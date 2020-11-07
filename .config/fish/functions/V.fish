# Defined in - @ line 1
function V --wraps='sudo -E nvim' --description 'alias V sudo -E nvim'
  sudo -E nvim $argv;
end
