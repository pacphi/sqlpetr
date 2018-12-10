#! /bin/bash

echo "You will need the Arch User Repository and 'yaourt'!!"
yaourt --aur --sync --noconfirm --needed \
  libmagick \
  libpqxx \
  poppler \
  postgresql-libs \
  qpdf \
  v8-3.14
sudo sed -i.bak 's/,PDF,/,/' /etc/ImageMagick-7/policy.xml
./install_me_linux.R
