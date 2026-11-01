package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzepe implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7341a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f7342b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcad f7343c;

    public zzepe(zzges zzgesVar, zzffo zzffoVar, zzcad zzcadVar) {
        this.f7341a = zzgesVar;
        this.f7342b = zzffoVar;
        this.f7343c = zzcadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 9;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7341a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzepd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzepe zzepeVar = zzepe.this;
                return new zzepf(zzepeVar.f7342b.zzj, zzepeVar.f7343c.zzm());
            }
        });
    }
}
