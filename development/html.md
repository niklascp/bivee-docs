# HTML Style
- Class should always be the first attribute (even before href)
- Use [picture element polyfill](https://github.com/scottjehl/picturefill) and 2x retina images (bonus points for 1.5x and 3x).
- For responsive images, use srcset for images that simply scale (ie 2x, 3x, etc.) and <picture> for art-directed resizing.
- ARIA patterns wherever possible

## Icons
- [SVG sprites](http://bit.ly/1s74elA) with PNG fallbacks. More complex but more flexible, semantic, and accessible than icon fonts.
