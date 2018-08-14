// pull in desired CSS/SASS files
require( './styles/main.scss' );
require( '../../node_modules/materialize-css/dist/js/materialize.min.js' );

// inject bundled Elm app into div#main
var Elm = require( '../elm/Main' );
Elm.Main.embed( document.getElementById( 'main' ) );
