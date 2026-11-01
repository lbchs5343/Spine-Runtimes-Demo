package com.google.android.gms.internal.ads;

import g.dcy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeto implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7535a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdvk f7536b;

    public zzeto(zzges zzgesVar, zzdvk zzdvkVar) {
        this.f7535a = zzgesVar;
        this.f7536b = zzdvkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 23;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7535a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdvk zzdvkVar = zzeto.this.f7536b;
                return new zzetp(zzdvkVar.zzc(), zzdvkVar.zzr(), ti.f20033a.f20040g.r(), zzdvkVar.zzp(), zzdvkVar.zzs());
            }
        });
    }
}
