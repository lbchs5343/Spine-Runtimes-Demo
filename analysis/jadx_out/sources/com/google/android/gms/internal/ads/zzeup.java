package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* loaded from: classes3.dex */
public final class zzeup implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7567a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7568b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7569c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7570d;

    public zzeup(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7568b = zzhgpVar;
        this.f7569c = zzhgpVar2;
        this.f7570d = zzhgpVar3;
        this.f7567a = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeuo(((zzdxg) this.f7568b).zzb(), (PackageInfo) this.f7569c.zzb(), ((zzchq) this.f7570d).zza(), (zzdsh) this.f7567a.zzb());
    }
}
