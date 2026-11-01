package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.ti;

@Deprecated
/* loaded from: classes3.dex */
public final class zzbcu {
    public static boolean zza(zzbdc zzbdcVar, zzbcz zzbczVar, String... strArr) {
        if (zzbczVar == null) {
            return false;
        }
        ti.f20033a.v.getClass();
        zzbdcVar.zze(zzbczVar, SystemClock.elapsedRealtime(), strArr);
        return true;
    }
}
