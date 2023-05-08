find notebooks -name "*.ipynb" | \
xargs -I{} bash -c \
    'sed "s|\.ipynb|\.html|g" {} | \
     jupyter nbconvert --output="./out/$(basename {} .ipynb)" --to html --stdin'
