export DENO_VERSION=1.32.1
export DENO_DOWNLOAD_URL=https://github.com/denoland/deno/releases/download/v$DENO_VERSION/deno-x86_64-unknown-linux-gnu.zip

export DENO_INSTALL=/opt/deno
export PATH=$DENO_INSTALL/bin:$PATH

sudo mkdir $DENO_INSTALL
sudo chown -R ${USER} $DENO_INSTALL

if [ ! -f "deno-x86_64-unknown-linux-gnu.zip" ]; then
  wget $DENO_DOWNLOAD_URL
fi

if [ -d $DENO_INSTALL ]; then
  rm -rf $DENO_INSTALL
fi

mkdir -p $DENO_INSTALL/bin
unzip deno-x86_64-unknown-linux-gnu.zip -d $DENO_INSTALL/bin