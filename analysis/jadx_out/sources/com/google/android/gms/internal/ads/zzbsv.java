package com.google.android.gms.internal.ads;

import g.qu;

/* loaded from: classes3.dex */
public final class zzbsv extends zzbhl {

    /* renamed from: a, reason: collision with root package name */
    public final qu f4990a;

    public zzbsv(qu quVar) {
        this.f4990a = quVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhm
    public final void zze(zzbhv zzbhvVar) {
        this.f4990a.onNativeAdLoaded(new zzbsp(zzbhvVar));
    }
}
