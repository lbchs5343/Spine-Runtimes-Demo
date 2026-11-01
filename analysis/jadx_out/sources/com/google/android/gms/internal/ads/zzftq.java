package com.google.android.gms.internal.ads;

import g.chw;
import g.ci;
import g.dcy;
import g.duy;
import g.dyt;
import g.err;
import g.fdr;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzftq {
    public static dcy zza(ci ciVar, fdr fdrVar) {
        final duy duyVar = new duy();
        duyVar.f14868a = ciVar;
        Executor zzb = zzgey.zzb();
        dyt dytVar = new dyt() { // from class: com.google.android.gms.internal.ads.zzfto
            @Override // g.dyt
            public final void onComplete(ci ciVar2) {
                duy duyVar2 = duy.this;
                if (((chw) ciVar2).f12905e) {
                    duyVar2.cancel(false);
                    return;
                }
                if (ciVar2.a()) {
                    duyVar2.zzc(ciVar2.c());
                    return;
                }
                Exception b2 = ciVar2.b();
                if (b2 == null) {
                    throw new IllegalStateException();
                }
                duyVar2.zzd(b2);
            }
        };
        chw chwVar = (chw) ciVar;
        chwVar.getClass();
        chwVar.i.f(new err(zzb, dytVar));
        chwVar.n();
        return duyVar;
    }
}
