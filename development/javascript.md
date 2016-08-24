# Basic Javascript conventions

The 'revealing module' design pattern is a useful- and relatively simple- way to structure basic code on any given project.

Here's a basic example:

````javascript
var module = (function(g) {

    'use strict'; // If you're using a syntax checker like JSLint
    
    var my = {};

    var _privatevar;
    my.publicvar = undefined;

    function _privateMethod() {
        // private code here
    }

    my.publicMethod = function() {
        // call a private method like this:
        _privateMethod();
    }

    return my;
    
})(globals);
    
````

The "module" pattern is a trick that helps us enforce two things that Javascript natively does not:
- namespacing
- access privileges/privacy for properties and methods

Because these things get enforced, this code pattern also makes your code more portable: it's easier to reuse, split into different files, or add to a package manager like [Bower](http://bower.io/) or [RequireJS](http://requirejs.org/).

There is some debate about the module pattern's speed and extensibility in comparison with the more traditional JS [prototyping pattern](http://addyosmani.com/resources/essentialjsdesignpatterns/book/#prototypepatternjavascript), but for the moment the module pattern seems like the best compromise in terms of ease of use and readability (At least in the absense of a surrounding framework or library, such as Ember.js - in which case we should follow those conventions). That is, until [Javascript 2.0](http://blog.jeremymartin.name/2008/03/web-20-meet-javascript-20.html) ushers in the glorious utopia that awaits.

## The closure

The first thing you notice about the example above is that it wraps itself in an anonymous closure:

````javascript
var module = (function(g) */ module code here */ })(globals);
````

A _closure_ is basically a kind of function that calls itself. A quirk of javascript is that it allows "anonymous" closures: an unnamed function (ie `function() {}` instead of `function namedFunction() {}`) is allowed to call itself immediately after it's declared. Which is what we've done here. This effectively seals off anything inside the function from anything outside it- which is really useful for preventing conflicts between, say, variables with the same name in different modules.

Even better, the seal we've created is one-way: we can still pass in stuff we need from the outside. You can pass in values from the global namespace like so: `(function(g) {})(globals);` Now, the "g" variable will be available inside the closure. The most common example of this is from jQuery: `(function($) {})(jQuery);`, where the global `jQuery` variable is abbreviated to `$` for use inside the closure, without risking conflicts with any other framework using the `$` variable.

## Naming conventions and privacy
###### Or, don't let the public mess with your private parts

The module pattern allows us to enforce two difference access levels for its properties and methods: private and public. A fully object-oriented language like Ruby or Java enforces this natively using "private", "public" etc. keywords, but JS has no such cares in its rogue lifestyle.

We can trick it into doing so, however, with the way we declare methods and properties within our module closure. A regular declaration, such as `var whatever;` or `function whatever() {}` is automatically private. This means that any attempt to call or access it from outside the module will throw an error:

````javascript
module._privateMethod(); // throws 'cannot find undefined propery` error
````

Just to make things more visually obvious, I like to prefix private properties and methods with an underscore (_).

If we want to make something publicly accessible, on the other hand, we can simply add it to the module object (declared as "my") and return it, like this:

````javascript
var module = (function(g) {

    var my = {};
    
    my.publicvar = undefined;

    my.publicMethod = function() {
        // call a private method like this:
        console.log("Greetings from the inside.")
    }

      return my;
})(globals);

module.publicMethod(); // prints "Greetings from the inside."
````

So, in short:

#### Private

````javascript
var _privateProperty;

function _privateMethod() {}
````

#### Public
````javascript
// declare "my" object: var my = {};

my.publicProperty = undefined; // note that you must declare an explicit value, even if it's "undefined"

my.publicMethod = function() {}
````

Read more on this:
http://addyosmani.com/resources/essentialjsdesignpatterns/book/#revealingmodulepatternjavascript
http://www.adequatelygood.com/JavaScript-Module-Pattern-In-Depth.html
