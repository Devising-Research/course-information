# Hugo Website Quick Builder

# start a project
hugo new site newSite_kross
cd newSite_kross/

# choose a theme
# kross-hugo -- good for nested menus
git clone git@github.com:themefisher/kross-hugo.git  themes/kross-hugo


# move the exampleSite files in place, backup the previous files to bk/.
mkdir bk/
mv ./config.toml  ./content  ./data  ./netlify.toml  ./static bk/

# copy exampleSite files in place
cp -r ./themes/kross-hugo/exampleSite/config.toml  ./themes/kross-hugo/exampleSite/content  ./themes/kross-hugo/exampleSite/data  ./themes/kross-hugo/exampleSite/netlify.toml  ./themes/kross-hugo/exampleSite/static ./

# launch browser. one of the below lines should work...
/opt/google/chrome/chrome http://localhost:1313/kross/
open http://localhost:1313/kross/

# run the server in draft mode
hugo server -D
