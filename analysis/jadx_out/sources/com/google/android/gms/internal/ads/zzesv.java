package com.google.android.gms.internal.ads;

import g.bkm;
import g.dcy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzesv implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7513a;

    public zzesv(zzges zzgesVar) {
        this.f7513a = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 20;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7513a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                ti tiVar = ti.f20033a;
                bkm bkmVar = tiVar.f20040g;
                synchronized (bkmVar.f11739c) {
                    str = bkmVar.f11742f;
                }
                return new zzesw(str, tiVar.f20040g.j());
            }
        });
    }
}
