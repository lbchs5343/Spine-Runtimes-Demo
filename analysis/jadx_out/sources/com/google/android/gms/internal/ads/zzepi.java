package com.google.android.gms.internal.ads;

import g.dcy;
import g.edt;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzepi implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f7348a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbzz f7349b;

    public zzepi(zzges zzgesVar, zzbzz zzbzzVar) {
        this.f7348a = zzgesVar;
        this.f7349b = zzbzzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 10;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcV)).booleanValue() ? zzgei.zzh(null) : zzgei.zzm(this.f7349b.zzk(), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzeph
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                ArrayList arrayList = (ArrayList) obj;
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new zzepj(arrayList);
            }
        }, this.f7348a);
    }
}
