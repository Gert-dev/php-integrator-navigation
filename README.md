# php-integrator/atom-navigation
## Legacy
This is a legacy version that requires PHP >= 7.1 and Atom <= 1.18. Users that are on more recent version of Atom can and should use the [the base package](https://github.com/php-integrator/atom-base) instead.

This package depends on the syntax classes in Atom and they changed dramatically in Atom 1.19, effectively breaking most of this package. Instead, [the functionality of this package has been reimplemented in the core and base package](https://github.com/php-integrator/atom-navigation/issues/42#issuecomment-333316791).

## About
This package provides code navigation for your PHP source code using [PHP Integrator](https://github.com/php-integrator/atom-base).

**Note that the [php-integrator-base](https://github.com/php-integrator/atom-base) package is required and needs to be set up correctly for this package to function correctly.**

**Note that the [hyperclick](https://github.com/facebooknuclide/hyperclick) package is also required.**

What is included?
  * Navigate to the definition of your global PHP constants and functions.
  * Navigate to the PHP documentation of built-in classes and functions.
  * Navigate to the definition of classes, traits and interfaces.
  * Navigate to the definition of class, trait and interface members.

Note: The exact modifier key (ctrl, alt, shift, meta, ...) to hold whilst clicking depends on your configuration of the hyperclick package.

Tip: You can also navigate to the names of classes, interfaces and traits inside docblocks! If an item is *navigable*, it will be underlined when moving your mouse over it while holding the alt modifier key.

![GPLv3 Logo](http://gplv3.fsf.org/gplv3-127x51.png)
