#!/bin/bash

mkdir page-check-point
cd page-check-point
echo '
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <section class="container"><h1>Hello World!</h1> </section>
</body>
</html>'> index.html
mkdir css
cd css
echo "
* {
    box-sizing: border-box;
    margin: 0;
    font-family: 'Inter'
}
.container {
    
    display: flex;
    flex-direction: column;
    justify-content: center;
    overflow: hidden;
    backgroud-color: #4D4;
}
"> style.css
cd ..
ls -lh


