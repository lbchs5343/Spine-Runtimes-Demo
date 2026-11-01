package com.bykv.vk.component.ttvideo.player;

@JNINamespace("PLAYER")
/* loaded from: classes.dex */
public abstract class MaskInfo extends NativeObject {
    @CalledByNative
    public abstract void onMaskInfoCallback(int i, int i2, String str);
}
