# Basic CSS conventions

## Naming Conventions

The ideas behind OOCSS/SMACSS/BEM systems are great: modular, reusable CSS patterns that (primarily) target "namespaced" class names. But the way the aforementioned achieve this is pretty convoluted and frankly ugly. Let's use a simplified naming convention with the same basic aim but a bit more elegant (and easy to remember) syntax.

- Think in terms of design _systems_, not designed _pages_ or even _elements_. Your CSS shall be likened unto the grass blade and not the oak, for it shall bend in the stormy winds of a growing startup, not break.
- Class names should be clear, readable and should _describe the UI pattern, not the content_ (e.g. ".media_box", not ".news").
- In general, use class names (ie ".media_box") as the main selector rather than IDs ("#news") or generic HTML elements ("h2"). Classes are markup- and content-agnostic, reusable, and therefore work better in a system that needs to scale.

### Classes
- Base module: `.module` (e.g. `.header`)
- Submodule: `.module-submodule` (e.g. `.header-logo`) -- does NOT inherit properties of base module
- Modifier/variant: `.module.modifier` (e.g. `.header.global`) -- inherits the properties of base module

#### Special prefixes: 
- `.l-[name]`: layout-specific class, e.g. ".l-full_width"
- `.c-[name]`: color/theme-specific class, e.g. "c-reverse"
- `.is-[name]`: a class representing a state, e.g. "is-active", "is-open"
- `.js-[name]`, `#js-[name]`: javascript hook (used ONLY for JS, no CSS styles attached)

**Note:** It's good to use specific classes/ids for JS hooks so they don't interfere with style hooks.

###  Sass Variables:
- `$variable` or `$variable_with_several_word` (e.g. `$red` or `$burnt_umber`)
- `$category-variable` (e.g. `$theme-reverse`, `$color-header`)
- `$variable--modifier` (e.g. `$screen--small`, `$trees--happy`)

## Sass Structure

- Media queries should be nested inside the relevant selector rather than in a separate file, so you can look at an element and see every state in one place.
- Parent selectors, likewise, are a great way to consolidate states and variation within a single selector:

````
.button {
  &:hover {
    // hover state styles
  }
  
  .c-reverse & {
    // styles that change when the button is inside a reverse-themed parent
  }
  
  .&-icon {
    // styles for the .button-icon submodule - parent selector means you don't have to retype ".button"
  }
}
````
- Approach layout components as self-contained "modules" and give each a separate file. Include in a master file (app.scss or main.scss).
- Keep everything as dry, dynamic and automated as possible. If you have a helper mixin you use in more than one project, spin it off into a Bower module. Generate your color schemes with loops, maps, and mixins. Separate "concerns" as much as possible (handle type, color, etc. separately).

## Our CSS boilerplate

[Repository](https://github.com/biveeco/css-framework)

## Further reading

- Hugo Giraudel's [Sass Guidelines](http://sass-guidelin.es) are the final word on Sass-specific conventions and are as comprehensive as you can get.
