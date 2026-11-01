package com.google.android.gms.internal.ads;

import g.bme;
import j$.util.Optional;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class zzfmd {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsm f7999a;

    public zzfmd(zzdsm zzdsmVar) {
        this.f7999a = zzdsmVar;
    }

    public final void zza(bme bmeVar, long j, Optional optional) {
        final zzdsl zza = this.f7999a.zza();
        zza.zzb("plaac_ts", Long.toString(j));
        zza.zzb("ad_format", bmeVar.name());
        zza.zzb("action", "is_ad_available");
        optional.ifPresent(new Consumer() { // from class: com.google.android.gms.internal.ads.zzfmc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                zzdsl.this.zzb("plaay_ts", Long.toString(((Long) obj).longValue()));
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return j$.util.function.j.$default$andThen(this, consumer);
            }
        });
        zza.zzf();
    }
}
