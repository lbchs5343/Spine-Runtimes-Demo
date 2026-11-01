package com.google.android.gms.internal.ads;

import android.content.Intent;

/* loaded from: classes3.dex */
public final class zzetm implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7533a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7534b;

    public zzetm(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f7533a = zzhgpVar;
        this.f7534b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzetk zzb() {
        return new zzetk(((zzchq) this.f7533a).zza(), (Intent) this.f7534b.zzb());
    }
}
