# CSS Tricks

## Fading out an element

If you try to fade an element by changing the opacity like so:

```
button{
  animation: fade 1s ease forward;
}

@keyframes fade {
  from {
    opacity: 1;
  }
  to {
    opacity 0;
  }
}
```

Then the element will still be clickable / selectable with the cursor.

In order to fix this use `pointer-events` like so:

```
button{
  animation: fade 1s ease forward;
}

@keyframes fade {
  from {
    opacity: 1;
    pointer-event: all;
  }
  to {
    opacity 0;
    pointer-event: none;
  }
}
```

## Difference between `block` and `inline`

`display: block` means that the element will take up the whole width of it's parent element

- You can add `height` and `width` to `block` elements
- `block` elements will always drop to a new line

`display: inline` elements only take up the space necessary for the text/inner html which lives inside the tag

- You **cannot** add `height` or `width` to `in-line` elements
- `margin` and `padding` will only apply horizontally, not vertically

## Centering A main divs

Adding `margin: auto` will center an divs

```
div {
  width: 80%;
  height: 100vh;
  background: lightblue;
  text-align: center;
  margin: auto;
}
```
## Centering text within a div

Adding a `line-height` witht the same height of the div will automatically center the text within the div

```
div {
  width: 80%;
  height: 100vh;
  background: lightblue;
  text-align: center;
  margin: auto;
  line-heigh: 100vh;
}
```

## Change the color of cursor selection

You can customize cursor selection attributes like so:

```
p::selection {
  background: lightblue; /* changes the color of the selection */
  color: white; /* changes the color of the text */
}
```

## Make the first letter of your text big

```
p::first-letter{
  font-size: 2rem;
  font-weight: bold;
}
```

## Using `<a>` tags to fast travel to different sections of a document

There are a few steps to get this one working smoothly:

- give the `href` of the `<a>` tag the `id` of the element you want to travel to
- it's recommended to use a `<section>` tag for this
- add a `scroll-behavior` of `smooth`

HTML
```
<body>
  <h1>Title</h1>
  <section id="intro">
    <p>A bunch of text here</p>
  </section>
  <section id="next-paragraph">
    <p>A bunch of text here</p>
    <a href="#intro">Scroll to Top</a> /* be sure to include the # */
  </ section> 
</body>
```
CSS 
```
  html{
    scroll-behavior: smooth;
  }
```

## Darkmode Hack
[codepen](https://codepen.io/trickco/pen/MWeNaoP)

You can add a `filter` attribute to your `html` to easily create a darkmode

```
a {
  font-size: 5rem;
  color: purple;
}

html {
  background: black;
  filter: invert(1) hue-rotate(180deg);
}

```

[8 tips for dark mode](https://uxplanet.org/8-tips-for-dark-theme-design-8dfc2f8f7ab6)

## Hacking `rem` for an easier conversion with `px`

Normally 1 `rem` = 16 `px`

```
html {
  font-size: 62.5%;
}

h2 {
  font-size: 2rem; /* now equals 20px */
}

p {
  fontsize: 1.4rem; /* now equals 14px
}
```

The benefit of using `rem` over `px` is that it is more accessible and adapts to the user changing the font size of their browser

## Stacking boxshadows and animations

All you have to do is add a `,`

```
  div {
    box-shadow: 0px 10px 1px rgba(0, 0, 0, 0.2), 0px 40px 6px rgba(0, 0, 0, 0.2;
  }
```

## Add Gradient to text

This will create a trippy tye-dye text of the `h1` tag

```
h1 {
  background: linear-gradient(to left, purple, red);
  display: inline;
  font-size: 4rem;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
```







