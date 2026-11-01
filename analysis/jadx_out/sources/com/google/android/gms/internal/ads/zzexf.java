package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import g.dcy;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzexf implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f7673a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7674b;

    public zzexf(zzbzq zzbzqVar, Executor executor, String str, PackageInfo packageInfo, int i) {
        this.f7673a = executor;
        this.f7674b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        dcy zzh = zzgei.zzh(this.f7674b);
        zzfwh zzfwhVar = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzexd
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                return new zzexg((String) obj);
            }
        };
        Executor executor = this.f7673a;
        return zzgei.zzf(zzgei.zzm(zzh, zzfwhVar, executor), Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzexe
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(new zzexg(zzexf.this.f7674b));
            }
        }, executor);
    }
}
