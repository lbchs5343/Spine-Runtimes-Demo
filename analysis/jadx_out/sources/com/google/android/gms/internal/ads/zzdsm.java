package com.google.android.gms.internal.ads;

import g.edt;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdsm {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsr f6456a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6457b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f6458c;

    public zzdsm(zzdsr zzdsrVar, Executor executor) {
        this.f6456a = zzdsrVar;
        this.f6458c = zzdsrVar.zza();
        this.f6457b = executor;
    }

    public final zzdsl zza() {
        zzdsl zzdslVar = new zzdsl(this);
        zzdslVar.f6454a.putAll(this.f6458c);
        return zzdslVar;
    }

    public final void zze() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzln)).booleanValue()) {
            zzdsl zza = zza();
            zza.zzb("action", "pecr");
            zza.zzf();
        }
    }
}
