package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import g.em;

/* loaded from: classes3.dex */
public final class zzef implements zzdc {
    @Override // com.google.android.gms.internal.ads.zzdc
    public final long zza() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final long zzb() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final long zzc() {
        return System.nanoTime();
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final zzdm zzd(Looper looper, Handler.Callback callback) {
        return new em(new Handler(looper, callback));
    }
}
