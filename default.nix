{ stdenv, cmake, cmake_macros }:

stdenv.mkDerivation rec {
  pname = "my_deriv";
  version = "0.1.0";
  src = ./.;
  nativeBuildInputs = [ cmake_macros cmake ];
  propagatedBuildInputs = [ ];
  # dontPatch = true;
  # dontFixup = true;
  # dontStrip = true;
  # dontPatchELF = true;
}
