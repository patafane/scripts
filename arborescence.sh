#/bin/bash
touch index.html
mkdir -p public/{css,pages,img,js,src/sass/modules}
touch public/css/style.css && touch public/js/main.js && touch public/pages/about.html && touch public/src/sass/app.sass
touch public/src/sass/modules/_style.sass && touch public/src/sass/_variables.sass && touch public/src/sass/modules/_header.sass && touch public/src/sass/modules/_nav.sass && touch public/src/sass/modules/_section.sass && touch public/src/sass/modules/_footer.sass
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/css/style.css">
    <script src="https://kit.fontawesome.com/08d55bf215.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    
    <script src="./node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
</body>
</html>' > index.html
echo "@import ./_variables
@import ../../../node_modules/bootstrap/scss/bootstrap
@import ./modules/_style" > public/src/sass/app.sass
echo "@import ./_nav
@import ./_header
@import ./nav
@import ./_section
@import ./_footer" > public/src/sass/modules/_style.sass