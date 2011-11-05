# What is this?

Color Hacker is a handy little utility for helping you crack your color schemes using Sass color functions.
Simply pass the `hack-colors` function a list of colors and it will return a set of color functions that show
how all of the colors in the color scheme can be derived from the first color.

## Example

``` scss
@debug(hack-colors(#cff09e #a8dba8 #79bd9a #3b8686 #0b486b));
```

Output:

``` scss
$key: #cff09e;
$color-2: scale-color(adjust-hue($key, 36deg), $saturation: -43.367%, $lightness: -2.764%);
$color-3: scale-color(adjust-hue($key, 65deg), $saturation: -53.561%, $lightness: -22.111%);
$color-4: scale-color(adjust-hue($key, 96deg), $saturation: -46.923%, $lightness: -51.508%);
$color-5: scale-color(adjust-hue($key, 118deg), $saturation: 30.395%, $lightness: -70.352%);
```


## Setup

Install the plugin:

``` sh
gem install color-hacker
```

Add Color Hacker to your compass configuration file:

``` rb
require 'color-hacker'
```

## Usage

`hack-colors` accepts two variables.

1. A space separated list of colors, e.g. (#fab #00face)
2. Optional: A function type, scale or adjust. Defaults to scale.

``` scss
// Debug passes output to the terminal
@debug(hack-colors(#beaf0c #deac0b));

// Return adjust-color functions
@debug(hack-colors(#beaf0c #deac0b, scale));

```

## License
Copyright (c) 2008-2009 Brandon Mathis<br>
All Rights Reserved.<br>
Released under a [slightly modified MIT License][license].

[license]: http://github.com/imathis/color-hacker/tree/master/LICENSE.markdown
