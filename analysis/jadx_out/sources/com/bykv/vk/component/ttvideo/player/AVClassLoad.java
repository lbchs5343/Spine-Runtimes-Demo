package com.bykv.vk.component.ttvideo.player;

@JNINamespace("UTILS")
/* loaded from: classes.dex */
class AVClassLoad {
    @CalledByNative
    public static Object getClassLoader() {
        return AVClassLoad.class.getClassLoader();
    }
}
