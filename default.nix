{stdenv, notify-osd}: 

stdev.mkDerivation {
  name="battnotify-1.0";
  src=./bat.sh;
  buildInputs=[notify-osd];
}
