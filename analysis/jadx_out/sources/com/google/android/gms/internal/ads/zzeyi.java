package com.google.android.gms.internal.ads;

import g.dcy;
import g.edt;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzeyi implements zzevz {
    public zzeyi(zzbzn zzbznVar, zzges zzgesVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 47;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        final dcy zzh = zzgei.zzh(null);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfK)).booleanValue()) {
            zzh = zzgei.zzh(null);
        }
        final dcy zzh2 = zzgei.zzh(null);
        return zzgei.zzc(zzh, zzh2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyh
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeyj((String) dcy.this.get(), (String) zzh2.get());
            }
        }, zzcaj.zza);
    }
}
