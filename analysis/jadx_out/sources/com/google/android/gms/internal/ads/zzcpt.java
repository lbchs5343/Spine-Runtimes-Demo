package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzcpt implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcpk f5501a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5502b;

    public zzcpt(zzcpk zzcpkVar, zzhgp zzhgpVar) {
        this.f5501a = zzcpkVar;
        this.f5502b = zzhgpVar;
    }

    public static Set zza(zzcpk zzcpkVar, zzcrf zzcrfVar) {
        Set singleton = Collections.singleton(new zzded(zzcrfVar, zzcaj.zzf));
        zzhgf.zzb(singleton);
        return singleton;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zza(this.f5501a, (zzcrf) this.f5502b.zzb());
    }
}
