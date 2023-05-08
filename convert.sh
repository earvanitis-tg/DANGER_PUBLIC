mkdir -p _site
find ./notebooks -name "*.ipynb" | \
xargs -I{} bash -c \
    'sed "s|\.ipynb|\.html|g" {} | \
     jupyter nbconvert --output="./_site/$(basename {} .ipynb)" --to html --stdin'
