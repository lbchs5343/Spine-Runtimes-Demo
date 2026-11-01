package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaFormat;

/* loaded from: classes3.dex */
public enum zzfnb {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    HTML_DISPLAY("htmlDisplay"),
    NATIVE_DISPLAY("nativeDisplay"),
    VIDEO(MediaFormat.KEY_VIDEO),
    AUDIO(MediaFormat.KEY_AUDIO);

    private final String zzg;

    zzfnb(String str) {
        this.zzg = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzg;
    }
}
