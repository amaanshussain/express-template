echo "Resetting project..."

echo "What do you want to name this project?"
read name

if [ "$(uname)" == "Darwin" ]; then
    sed -i '' "s/express-template/$name/g" package.json
    sed -i '' "s/express-template/$name/g" package-lock.json
else
    sed -i "s/express-template/$name/g" package.json
    sed -i "s/express-template/$name/g" package-lock.json
fi

path=$(pwd)
newpath="$(dirname $path)/$name"
mv $path $newpath
cd $newpath

rm -Rf .git
npm i