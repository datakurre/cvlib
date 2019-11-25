{ lib, buildPythonPackage, fetchPypi, setuptools
, imageio, imutils, Keras, numpy, opencv3, pillow, progressbar, requests, tensorflow }:

buildPythonPackage rec {
  pname = "cvlib";
  version = "0.2.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "b1a1dacbdbac8c871e547befa92e80b16b570359cea6314b91bef4ab1036c2c9";
  };

  doCheck = false;

  propagatedBuildInputs = [
    imageio
    imutils
    Keras
    numpy
    opencv3
    pillow
    progressbar
    requests
    setuptools
    tensorflow
  ];

}
