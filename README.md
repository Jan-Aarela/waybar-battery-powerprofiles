**Example waybar.css setup**

```
...
    "custom/battery": {
      "interval": 10,
      "return-type": "json",
      "exec": "~/.config/hypr/themes/Mocha/bat-pp.sh",
      "exec-on-event": true,
      "format": "{text}%",
      "on-click": "~/.config/hypr/themes/Mocha/bat-pp.sh toggle"
    },
...
```
