## Example waybar.jsonc setup

``` json
    "custom/battery": {
      "interval": 10,
      "return-type": "json",
      "exec": "~/.config/hypr/themes/Mocha/bat-pp.sh",
      "exec-on-event": true,
      "format": "{text}%",
      "on-click": "~/.config/hypr/themes/Mocha/bat-pp.sh toggle"
      "tooltip": "true",
      "tooltip-format": "{alt}W"
    },
```

**Use classes .warning, .critical and .charging for css styling.**
