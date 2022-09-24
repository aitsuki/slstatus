caps=$(xset q | grep "Caps" | awk -F' ' '{ print $4 }')
if [ $caps = "on" ]; then
  echo "A"
else
  flag=$(fcitx5-remote)
  if (( flag == 2 )); then
          echo "中"
  else
          echo "英"
  fi
fi
