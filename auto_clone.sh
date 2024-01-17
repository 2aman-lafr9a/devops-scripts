gh repo list 2aman-lafr9a | while read -r repo _; do
  gh repo clone "$repo" "$repo"
done
