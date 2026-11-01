package com.google.android.gms.internal.ads;

import g.cmo;
import g.dcy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeqr implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7400a;

    public zzeqr(zzges zzgesVar) {
        this.f7400a = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 55;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7400a.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeqq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ti tiVar = ti.f20033a;
                tiVar.v.getClass();
                return new zzeqs(System.currentTimeMillis() - ((cmo) tiVar.f20034ab.zzi()).av().zza());
            }
        });
    }
}
