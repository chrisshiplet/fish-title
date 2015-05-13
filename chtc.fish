function chtc
  if count $argv > /dev/null
    if [ (count $argv) = 3 ]
      echo -n -e "\033]6;1;bg;red;brightness;" $argv[1] "\a"
      echo -n -e "\033]6;1;bg;green;brightness;" $argv[2] "\a"
      echo -n -e "\033]6;1;bg;blue;brightness;" $argv[3] "\a"
    else
      echo -n -e "\033]6;1;bg;red;brightness;" (echo "ibase=16; " (echo (echo $argv[1] | cut -c 1-2) | tr [a-z] [A-Z]) |bc) "\a"
      echo -n -e "\033]6;1;bg;green;brightness;" (echo "ibase=16; " (echo (echo $argv[1] | cut -c 3-4) | tr [a-z] [A-Z]) |bc) "\a"
      echo -n -e "\033]6;1;bg;blue;brightness;" (echo "ibase=16; " (echo (echo $argv[1] | cut -c 5-6) | tr [a-z] [A-Z]) |bc) "\a"
    end
  else
    echo -n -e "\033]6;1;bg;*;default\a"
  end
end
