<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>
    SomaFM Links
  </title>
  <meta http-equiv="content-type" content="text/html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <style type="text/css">
    @import url("https://fonts.googleapis.com/css?family=Sriracha&display=swap");
    body {
      font-family: "Sriracha", cursive;
      background-color: #cc9900;
    }
    /* logo header */
    header {
    margin: 1em 4em;
    }
    img {
      box-shadow: 5px 5px 5px rgba(0,0,0,0.5);
      height: 250px;
      width: 300px;
      border: 3px solid #663300;
    }
    ul {
      list-style-type: none;
    }
    /* station name block */
    a.blk1 {
      color: #ffffff;
      background-color: #663300;
      display: inline-block;
      text-decoration: none;
      padding: .3em;
      box-shadow: 3px 3px 3px rgba(0,0,0,0.5);
    }
    a.blk1:hover {
      background-color: #cc6600;
      color: #cc9900;
      box-shadow: none;
    }
    a.blk1:active {
      background-color: #ff0000; /* red */
    }
    /* alt block */
    a.blk2 {
      color: #cc6600;
      background-color: #663300;
      display: inline-block;
      text-decoration: none;
      padding: .3em;
      box-shadow: 3px 3px 3px rgba(0,0,0,0.5);
    }
    a.blk2:hover {
      background-color: #cc6600;
      color: #cc9900;
      box-shadow: none;
    }
    a.blk2:active {
      background-color: #ff0000; /* red */
    }
    div.blk3 {
      color: #cc9900;
      background-color: #cc6600;
      display: inline-block;
      padding: .3em;
      margin: .2em;
    }
  </style>
</head>
<body>
  <header>
    <a href="http://somafm.com/">
      <img src="http://somafm.com/linktous/300x250sfm.jpg"
           alt="SomaFM commercial free internet radio">
    </a>
  </header>
  <section>
    <ul>
      % for i in names:
      <li>
        <a href="http://ice{{ data[i][2] }}.somafm.com/{{ data[i][1] }}-128-aac" target="_blank" class="blk1">
          {{ i }}
        </a>
        <a href="http://ice{{ data[i][3] }}.somafm.com/{{ data[i][1] }}-128-aac" target="_blank" class="blk2">
          Alt
        </a>
        <div class="blk3">
          {{ data[i][0] }}
        </div>
      </li>
      % end
    </ul>
  </section>
</body>
</html>
