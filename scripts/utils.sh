is_file_exist() 
{
  local exist=0
  if [ -f $1 ]; then
     local exist=1
  fi
  echo "$exist"
}
