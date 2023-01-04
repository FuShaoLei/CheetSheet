## adb安装apk命令

先用adb devices查看连接的设备，并复制设备id，然后

```xml
adb -s 设备ID install apk路径
```

## android自适应横屏

```xml
<activity
          android:name=".MainActivity"
          android:screenOrientation="sensorLandscape"
          android:exported="true">
</activity>
```

## 自适应大小的TextView

```xml
<TextView
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:maxLines="1"
    android:text="17:58"
    android:textColor="#fff"
    android:gravity="center"
    android:textSize="500sp"
    app:autoSizeMaxTextSize="500sp"
    app:autoSizeMinTextSize="100sp"
    app:autoSizeStepGranularity="1sp"
    app:autoSizeTextType="uniform"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toTopOf="parent" />
```

## Android 隐藏状态栏

```kotlin
// Hide the status bar.
window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN
// Remember that you should never show the action bar if the
// status bar is hidden, so hide that too if necessary.
actionBar?.hide()
    
// 具体看： https://developer.android.google.cn/training/system-ui/status?hl=zh-cn#kotlin
```

