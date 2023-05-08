find notebooks -name "*.ipynb" | xargs -I{} echo "{} jupyter nbconvert --output-dir='./out' --to html --stdin"
