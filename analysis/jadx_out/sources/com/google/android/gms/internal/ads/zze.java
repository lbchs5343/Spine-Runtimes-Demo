package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import g.chd;
import g.fxw;

/* loaded from: classes3.dex */
public final class zze {
    public final AudioAttributes zza;

    public /* synthetic */ zze() {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
        int i = zzen.zza;
        if (i >= 29) {
            chd.a(usage, 1);
        }
        if (i >= 32) {
            fxw.a(usage, 0);
        }
        this.zza = usage.build();
    }
}
