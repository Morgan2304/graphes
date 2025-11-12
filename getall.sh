jq '.artifacts[].id' gh-artifacts.json > liste_id.txt

for a in $(cat liste_id)
do 
  echo "requete $a"
  curl -L \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $(cat ../token.sh)" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/repos/Morgan2304/graphes/actions/artifacts
done

unzip artefict.zip
