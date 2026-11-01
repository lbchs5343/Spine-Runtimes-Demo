package com.google.android.gms.internal.ads;

import g.dcy;
import g.dzm;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzetd implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7518a;

    /* renamed from: b, reason: collision with root package name */
    public final zzffo f7519b;

    public zzetd(zzges zzgesVar, zzffo zzffoVar) {
        this.f7518a = zzgesVar;
        this.f7519b = zzffoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 21;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7518a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzete("requester_type_2".equals(dzm.w(zzetd.this.f7519b.zzd)));
            }
        });
    }
}
