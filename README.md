# Gmail App To Linux

App with TrayIcon (with status of new messages) to Gmail in Linux


## Instalation
```bash
git clone https://github.com/thiagotognoli/gmail-app-linux.git \
  && ./gmail-app-linux/install-zip.sh \
  && rm -rf gmail-app-linux
```

## Compile (wait nativefier pull request to accept --status-icon)
```bash
sudo npm install nativefier -g \
  && git clone https://github.com/thiagotognoli/gmail-app-linux.git \
  && ./gmail-app-linux/create.sh
```

## Credits
"Gmail-linux-x64.zip" file generated using a [Thiago Tognoli nativefier fork](https://github.com/thiagotognoli/nativefier/tree/feature/iconStatus) of [nativefier](https://github.com/jiahaog/nativefier).


