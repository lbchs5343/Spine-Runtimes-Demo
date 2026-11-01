package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.Collections;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzfjb {
    public static final zzfjh zza(Callable callable, Object obj, zzfjj zzfjjVar) {
        return zzb(callable, zzfjjVar.f7922b, obj, zzfjjVar);
    }

    public static final zzfjh zzb(Callable callable, zzges zzgesVar, Object obj, zzfjj zzfjjVar) {
        return new zzfjh(zzfjjVar, obj, null, zzfjj.f7921a, Collections.EMPTY_LIST, zzgesVar.zzb(callable));
    }

    public static final zzfjh zzc(dcy dcyVar, Object obj, zzfjj zzfjjVar) {
        return new zzfjh(zzfjjVar, obj, null, zzfjj.f7921a, Collections.EMPTY_LIST, dcyVar);
    }

    public static final zzfjh zzd(final zzfiw zzfiwVar, zzges zzgesVar, Object obj, zzfjj zzfjjVar) {
        return zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfja
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfiw.this.zza();
                return null;
            }
        }, zzgesVar, obj, zzfjjVar);
    }
}
