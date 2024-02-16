# write a script to set git user.email in all repos in folder ~/code
for dir in ~/code/*; do
  if [ -d "$dir" ]; then
    cd "$dir"
    if [ -d ".git" ]; then
      git config user.email "anjan.jagirdar@gmail.com"
    fi
    cd ..
  fi
done
