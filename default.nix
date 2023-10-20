{ stdenv, cmake, cmake_macros }:

stdenv.mkDerivation rec {
  pname = "test_lib";
  version = "0.1.0";
  src = ./.;
  nativeBuildInputs = [ cmake ];
  propagatedBuildInputs = [ cmake_macros cmake ];
  # dontPatch = true;
  # dontFixup = true;
  dontStrip = true;
  # dontPatchELF = true;
}
