package com.google.android.gms.internal.ads;

import android.content.Context;
import g.agd;
import g.cbv;
import g.mx;
import g.ti;

/* loaded from: classes3.dex */
public final class zzfgl {
    public static void zza(Context context, boolean z) {
        if (z) {
            agd.k("This request is sent from a test device.");
            return;
        }
        mx mxVar = cbv.f12612a.f12615d;
        agd.k("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"" + mx.j(context) + "\")) to get test ads on this device.");
    }

    public static void zzb(int i, Throwable th, String str) {
        agd.k("Ad failed to load : " + i);
        agd.h();
        if (i == 3) {
            return;
        }
        ti.f20033a.f20034ab.zzv(th, str);
    }
}
