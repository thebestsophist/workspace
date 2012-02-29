# Symphony CMS + Compass + HTML5 Boilerplate + Media queries == Sexy

Version: 2012.02.01a (http://enguindesign.com/journal/articles/2011/07/versioning-revisited/) 

HTML5 Boilerplate Version: 3.0.6

## Overview
This is a revision of the basic Symphony CMS workspace to use Compass/SASS, the HTML5 Boilerplate, and offers basic grids for media queries.

### Features
- Lots of Compass/SASS love.
- Media query love using modernizr with respond.js
- Customized typographic scale using rem with px-based fallback (http://modularscale.com/scale/?px1=16&px2=12&ra1=1.5&ra2=0).
- Customized color scheme based on enguindesign.com (use these at your own peril).
- Basic 6-column grid layouts for 48em and 60em screen widths.
- Updated default page.xsl which you should link to in symphony/templates.

## Requirements
- Compass (http://compass-style.org/)
- Compass H5bp gem (https://github.com/sporkd/compass-h5bp)

## Changes to HTML5 Boilerplate and Compass-H5bp
This template makes some minor changes to the HTML5 Boilerplate.
- It adds jQuery and jQuery UI, as well the Google Web Font API via the Google Loader.

This template makes some pretty major changes to Compass-H5bp.
- Media queries with basic 6 column grid for 769px and 960px screen widths (set using mixins in the _base.scss file.
- Instead of including media queries in the _media.scss partial file, it takes advantage of @media bubbling to nest the media queries for elements together. (http://thesassway.com/intermediate/responsive-web-design-part-2)
- It offers a wider default color palate.
- Element sizes based on rem with px failsafes. (http://snook.ca/archives/html_and_css/font-size-with-rem)

## Templates
The templates in the `symphony-templates/` are meant to replace the files in `/symphony/templates` the main updates are to page.xsl to take advantage of HTML5 elements.

## License
HTML5 Boilerplate created by by Paul Irish and Divya Manian http://html5boilerplate.com
Compass-H5pb by Peter Gumeson https://github.com/sporkd/compass-h5bp

Do what you will. Anything we've created is granted with the MIT/X11 license, just like Symphony CMS.