# double_tap_statusbar_to_sleep

The mod enables you to implement double tap to sleep statusbar mod in any Operating system greater than GB.


# How to add this to my ROM

For statusbar
----------------------------------

Decompile your SystemUI.apk. Download the content of this project and extract somewhere. Copy the smali files of SystemUI keeping the folder structure intact.

Now add double tap to statusbar. For this open SystemUI.apk/res/layouts/status_bar.xml just after the root element place this:

```
<com.android.systemui.DLock android:focusable="true" android:clickable="true" android:layout_width="fill_parent" android:layout_height="fill_parent" />
```

Now it would look like:

```
<?xml version="1.0" encoding="utf-8"?>
<com.android.systemui.statusbar.phone.PhoneStatusBarView android:orientation="vertical" android:id="@id/msim_status_bar" android:background="@drawable/system_bar_background" android:focusable="true" android:descendantFocusability="afterDescendants"
  xmlns:android="http://schemas.android.com/apk/res/android"
  xmlns:systemui="http://schemas.android.com/apk/res/com.android.systemui">
    <com.android.systemui.DLock android:focusable="true" android:clickable="true" android:layout_width="fill_parent" android:layout_height="fill_parent" /> 
```

For Settings
----------------------------------

Second step is to add the setting to toggle this in Settings.apk

Decompile your Settings.apk. Download the content of this project and extract somewhere. Copy the smali files of Settings keeping the folder structure intact.

Open Settings.apk/res/xml/display.xml and add

```
<com.android.settings.gravity.SystemSwitchPreference android:title="Double tap status bar to sleep" android:key="double_tap_sb_sleep" android:summary="Double tapping the status bar makes the device sleep" android:defaultValue="true" />
```

Compile both the APKs and push to your phone.

Supported ROMs
----------------------------------

Any ROM that do not have double tap statusbar to sleep mod already as it may conflict with the same.

Customization
----------------------------------

If you want to tweak or customize it, the Java file is also here. Feel free to play with it.

Licensing
----------------------------------

Licenced under GNU GPL v3.0. A copy of the license can be obtained from [here](https://www.gnu.org/licenses/gpl-3.0.en.html)

