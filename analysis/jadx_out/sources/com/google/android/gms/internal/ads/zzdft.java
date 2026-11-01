package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzdft implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5926a;

    public zzdft(zzdfn zzdfnVar, zzhgp zzhgpVar) {
        this.f5926a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzded((zzcvj) this.f5926a.zzb(), zzcaj.zzf));
        zzhgf.zzb(singleton);
        return singleton;
    }
}
