package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import g.chk;

/* loaded from: classes3.dex */
public final class zzdxi implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6636a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6637b;

    public zzdxi(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6636a = zzhgpVar;
        this.f6637b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        try {
            return chk.c((Context) this.f6636a.zzb()).c(0, ((zzdxg) this.f6637b).zzb().packageName);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
