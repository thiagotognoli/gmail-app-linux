# Gmail App To Linux

App with TrayIcon (with status of new messages) to Gmail in Linux


## Instalation
```bash
git clone https://github.com/thiagotognoli/gmail-app-linux \
  && ./gmail-app-linux/install.sh \
  && rm -rf gmail-app-linux
```

## Compile (wait nativefier pull request to accept --status-icon)
```bash
sudo npm install nativefier -g \
  && git clone https://github.com/thiagotognoli/gmail-app-linux \
  && ./gmail-app-linux/create.sh
```

## Credits
"Gmail-linux-x64" subfolder generated using a [Thiago Tognoli fork](https://github.com/thiagotognoli/nativefier/tree/feature/iconStatus) of [nativefier](https://github.com/jiahaog/nativefier).


