function mcd --argument-names dir --description 'Make a new directory then cd into it'
  command mkdir $dir
  cd $dir
end
