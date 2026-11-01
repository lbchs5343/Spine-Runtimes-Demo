package com.google.android.gms.internal.ads;

import g.dcy;
import g.edt;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzezm implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f7711a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7712b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbzz f7713c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7714d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7715e;

    public zzezm(zzbzz zzbzzVar, boolean z, boolean z2, zzges zzgesVar, ScheduledExecutorService scheduledExecutorService) {
        this.f7713c = zzbzzVar;
        this.f7714d = z;
        this.f7715e = z2;
        this.f7712b = zzgesVar;
        this.f7711a = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 50;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        if ((!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgS)).booleanValue() || !this.f7715e) && this.f7714d) {
            dcy zzh = zzgei.zzh(null);
            zzfwh zzfwhVar = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzezk
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object apply(Object obj) {
                    String str = (String) obj;
                    if (str == null) {
                        return null;
                    }
                    return new zzezn(str);
                }
            };
            zzges zzgesVar = this.f7712b;
            return zzgei.zze(zzgei.zzo(zzgei.zzm(zzh, zzfwhVar, zzgesVar), ((Long) zzbfb.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.f7711a), Exception.class, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzezl
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object apply(Object obj) {
                    zzezm.this.f7713c.zzw((Exception) obj, "TrustlessTokenSignal");
                    return null;
                }
            }, zzgesVar);
        }
        return zzgei.zzh(null);
    }
}
