package com.bykv.vk.component.ttvideo.player;

@JNINamespace("PLAYER")
/* loaded from: classes.dex */
public abstract class LoadControl extends NativeObject {
    @CalledByNative
    public abstract int onCodecStackSelected(int i);

    @CalledByNative
    public abstract int onFilterStackSelected(int i);

    @CalledByNative
    public abstract int onTrackSelected(int i);

    @CalledByNative
    public abstract boolean shouldStartPlayback(long j, float f2, boolean z);
}
