package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import g.djh;

/* loaded from: classes3.dex */
public final class zzfoq {

    /* renamed from: a, reason: collision with root package name */
    public static int f8109a = 2;

    public static void zza(Context context) {
        context.registerReceiver(new djh(0), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }

    public static int zzb() {
        if (zzfom.zza() != zzfnc.CTV) {
            return 2;
        }
        return f8109a;
    }
}
