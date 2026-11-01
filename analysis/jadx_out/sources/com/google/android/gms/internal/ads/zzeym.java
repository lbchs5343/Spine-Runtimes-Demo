package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeym implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7694a;

    /* renamed from: b, reason: collision with root package name */
    public final List f7695b;

    public zzeym(zzbbw zzbbwVar, zzges zzgesVar, List list) {
        this.f7694a = zzgesVar;
        this.f7695b = list;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 48;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7694a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeyn(zzeym.this.f7695b);
            }
        });
    }
}
