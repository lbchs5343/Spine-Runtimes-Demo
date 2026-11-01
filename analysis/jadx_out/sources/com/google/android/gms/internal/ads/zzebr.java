package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes3.dex */
public final class zzebr implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6776a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6777b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6778c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f6779d;

    public zzebr(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6, zzhgp zzhgpVar7) {
        this.f6777b = zzhgpVar;
        this.f6778c = zzhgpVar2;
        this.f6779d = zzhgpVar3;
        this.f6776a = zzhgpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzchq) this.f6777b).zza();
        zzexs zzexsVar = (zzexs) this.f6778c.zzb();
        zzexq zzexqVar = (zzexq) this.f6779d.zzb();
        zzcik.zza();
        return new zzebq(zza, zzexsVar, zzexqVar, ((zzebz) this.f6776a).zzb(), zzfin.zzc(), zzcin.zza());
    }
}
