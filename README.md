The file [`Resources/Keymaps/Custom.tpk`](Resources/Keymaps/Custom.tpk) contains my custom keymappings for [Presonus Notion 6](https://www.presonus.com/products/Notion).

I have this symlinked to the application's keymaps folder. Changes don't take effect until the application is restarted.

To set up the symlink, run `./setup.sh` in the terminal.

The other files are just copied here for reference. In particular the [`Resources/Lists/ExpressionList.tpk`](Resources/Lists/ExpressionList.tpk) and [`Resources/Lists/Tooltips.tpk`](Resources/Lists/Tooltips.tpk) files have information about what the command codes in the keymap files refer to. For example, this shows us that the `autu` command is for making a tuplet:

```xml
  <packet type="TTIP" name="Tooltip entry">
    <property key="uicm" name="UI command">autu</property>
    <property key="ttst" name="Tooltip text">Make tuplet</property>
    <property key="ttd1" name="Tooltip details 1">Converts a selection into a tuplet</property>
  </packet>
```

This is useful because otherwise the command codes are not documented anywhere that I know of.
