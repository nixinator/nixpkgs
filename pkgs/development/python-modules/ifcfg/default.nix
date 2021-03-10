{ lib, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "ifcfg";
  version = "0.21";

  src = fetchPypi {
    inherit pname version;
    sha256 = "01d68rjj9s4whaflf6mi8c0aibvq28xnifi94hlwyr197j0wx5jz";
  };

  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/ftao/python-ifcfg";
    description = "Ifcfg is a cross-platform (Windows/Unix) library for parsing ifconfig and ipconfig output in Python";
    license = licenses.bsd3;
    maintainers = with maintainers; [ nixinator ];
  };
}
