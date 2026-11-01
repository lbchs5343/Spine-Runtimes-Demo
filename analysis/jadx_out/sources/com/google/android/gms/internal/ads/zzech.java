package com.google.android.gms.internal.ads;

import g.dnb;
import j$.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzech {

    /* renamed from: a, reason: collision with root package name */
    public final zzecd f6797a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f6798b;

    public zzech(zzecd zzecdVar, zzges zzgesVar) {
        this.f6797a = zzecdVar;
        this.f6798b = zzgesVar;
    }

    public final void zza(zzfiv zzfivVar) {
        final zzecd zzecdVar = this.f6797a;
        Objects.requireNonNull(zzecdVar);
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzecf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzecd.this.getWritableDatabase();
            }
        };
        zzges zzgesVar = this.f6798b;
        zzgei.zzr(zzgesVar.zzb(callable), new dnb(zzfivVar), zzgesVar);
    }
}
