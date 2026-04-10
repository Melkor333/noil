for input in @baseInputs @buildInputs {
  # TODO: shouls it be $[input.path] or the like?
  setglobal PATH = "$input/bin:"
}
tar -xzf $src
cd hello-2.12.1
./configure --prefix=$out
make
make install
