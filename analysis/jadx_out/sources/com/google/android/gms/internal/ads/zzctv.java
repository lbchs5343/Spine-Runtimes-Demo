package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.cvb;
import g.czz;

/* loaded from: classes3.dex */
public final class zzctv implements zzdbz, zzcya {

    /* renamed from: a, reason: collision with root package name */
    public final zzffo f5660a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5661b;

    /* renamed from: c, reason: collision with root package name */
    public final cvb f5662c;

    /* renamed from: d, reason: collision with root package name */
    public final zzctx f5663d;

    public zzctv(cvb cvbVar, zzctx zzctxVar, zzffo zzffoVar, String str) {
        this.f5662c = cvbVar;
        this.f5663d = zzctxVar;
        this.f5660a = zzffoVar;
        this.f5661b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdbz
    public final void zza() {
        ((czz) this.f5662c).getClass();
        this.f5663d.zze(this.f5661b, SystemClock.elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        ((czz) this.f5662c).getClass();
        this.f5663d.zzd(this.f5660a.zzf, this.f5661b, SystemClock.elapsedRealtime());
    }
}
