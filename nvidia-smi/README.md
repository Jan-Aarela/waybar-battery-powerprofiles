## Module preview

![alt_text](https://raw.githubusercontent.com/Jan-Aarela/waybar-custom-modules/refs/heads/main/nvidia-smi/2025-07-24-011514_region.png)

## Example waybar.jsonc setup

``` json
    "custom/nvidia": {
      "interval": 4,
      "return-type": "json",
      "exec": "~/.config/hypr/themes/Mocha/nvidia.sh",
      "format": "<span size='x-large' rise='-2500'>󰢮</span>{text}",
      "tooltip": "true",
      "tooltip-format": "{alt}"
    },
```

**Use class .critical for styling**
