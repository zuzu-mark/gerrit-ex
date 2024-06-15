mkdir -p ./external/gerrit/etc
mkdir -p ./external/gerrit/git
mkdir -p ./external/gerrit/db
mkdir -p ./external/gerrit/index
mkdir -p ./external/gerrit/cache
chmod -R 777 external
cp gerrit.config ./external/gerrit/etc
cp secure.config ./external/gerrit/etc
