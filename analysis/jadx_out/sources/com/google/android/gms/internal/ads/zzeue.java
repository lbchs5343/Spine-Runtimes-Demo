package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* loaded from: classes3.dex */
public final class zzeue implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7550a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7551b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7552c;

    public zzeue(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4) {
        this.f7550a = zzhgpVar2;
        this.f7551b = zzhgpVar3;
        this.f7552c = zzhgpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeuc(zzfin.zzc(), ((zzcwd) this.f7550a).zza(), (PackageInfo) this.f7551b.zzb(), ((zzcho) this.f7552c).zzb());
    }
}
