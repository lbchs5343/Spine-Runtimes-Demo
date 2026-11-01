package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzeyv {

    /* renamed from: a, reason: collision with root package name */
    public final zzbvx f7703a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7704b;

    public zzeyv(zzbvx zzbvxVar, int i) {
        this.f7703a = zzbvxVar;
        this.f7704b = i;
    }

    public final int zza() {
        return this.f7704b;
    }

    public final PackageInfo zzb() {
        return this.f7703a.zzf;
    }

    public final String zzc() {
        return this.f7703a.zzd;
    }

    public final String zzd() {
        return zzfxf.zzc(this.f7703a.zza.getString("ms"));
    }

    public final String zze() {
        return this.f7703a.zzh;
    }

    public final List zzf() {
        return this.f7703a.zze;
    }
}
