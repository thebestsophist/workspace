# Symphony CMS + Compass + HTML5 Boilerplate + Media queries == Sexy

Version: 2013.04.29a (http://enguindesign.com/journal/articles/2011/07/versioning-revisited/) 

HTML5 Boilerplate Version: 3.0.6

## Overview
This is a revision of the basic Symphony CMS workspace to use Compass/SASS, the HTML5 Boilerplate, and offers basic grids for media queries.

### Features
- Lots of Compass/SASS love.
- Media query love using modernizr with respond.js
- Responsive images using Modernizr.mq and jQuery .attr
- Javascript for server-side optimizations (example usage in `utilities/codebits.xsl`)
- Customized typographic scale using rem with px-based fallback (http://modularscale.com/scale/?px1=16&px2=12&ra1=1.5&ra2=0).
- Customized color scheme based on enguindesign.com (use these at your own peril).
- Basic 6-column grid layouts for 48em and 60em screen widths.
- Updated default page.xsl which you should link to in symphony/templates.

## Requirements
- Compass <http://compass-style.org/>
- Compass H5bp gem <https://github.com/sporkd/compass-h5bp>
- Screen Detection Extension <https://github.com/thebestsophist/Screen-Detection-Extension>

## Using this template
After downloading this template, you can drop the whole thing into your Symphony folder. Alternatively, if you are using git. I prefer `git clone` this into its own folder and create a symlink to workspace/ (that way git doesn't get persnickety). Also, should remove `symphony/template` and replace it with a symlink to the `symphony-templates/` folder in this repository, this way you get the updated page.xsl template when creating new pages.

If you are new to Compass–or need a constant reminder like I do–all you have to do is run `compass watch [myproject]` in the command line and compass will watch and update your css files.

I have included mixins with default settings for 50rem (800px) and 65rem (1040px). However, you can easily set your own breakpoints. I've tried to keep it all documented, and if you want, it is pretty easy to change or update it yourself. I have also included javascript media queries to match the CSS media queries. There is also an example for using jQuery's .attr() method and Symphony's JIT Image Manipulation method for serving responsive images.

To take full advantage of this workspace, you will also need the Screen Detection extension <https://github.com/thebestsophist/Screen-Detection-Extension> installed. This will allow you to use server-side optimizations for your media queries.

Finally, I have not included anything for minimizing your javascript, feel free to do so yourself.

## Changes to HTML5 Boilerplate and Compass-H5bp
This template makes some minor changes to the HTML5 Boilerplate.

- It adds jQuery from Cloudflare’s js library CDN, as well the Google Web Font API via the Google Loader.
- A dead simple method of providing responsive images using Modernizr.mq and jQuery's .attr() method. Although this isn't as elegant as a method with server-side optimizations (with cookies), it still works pretty well.

The template also makes some pretty major changes to the SCSS generated by Compass-H5bp.

- Media queries with basic 6 column grid for 769px and 960px screen widths (set using mixins in the _base.scss file.
- Instead of including media queries in the _media.scss partial file, it takes advantage of @media bubbling to nest the media queries for elements together. (http://thesassway.com/intermediate/responsive-web-design-part-2)
- It offers a wider default color palate.
- Element sizes based on rem with px failsafes. (http://snook.ca/archives/html_and_css/font-size-with-rem)

## Templates
The templates in the `symphony-templates/` are meant to replace the files in `/symphony/templates` the main updates are to page.xsl to take advantage of HTML5 elements.

## Changelog

### Version 2013.04.29a

This version is *not* backwards compatible. There are major changes to how the layout is set.

- Complete overhaul of the column and gutter sizing mixins
- Major changes to line-height mixin
- More basic colors
- More transitions
- New .scss file for plugins
- jQuery now loads from Cloudflare CDN, who sends better caching headers.
- Webfonts loading in head to deal with flash of unstyled text
- Added wf-inactive class for working with web fonts
- Google Analytics is automatically removed when Symphony user is logged in (so you don‘t have to set IP filters).

## License
HTML5 Boilerplate created by by Paul Irish and Divya Manian http://html5boilerplate.com
Compass-H5pb by Peter Gumeson https://github.com/sporkd/compass-h5bp

Do what you will. Everything I've created here released with the MIT/X11 license, just like Symphony CMS.