package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* loaded from: classes3.dex */
public final class zzdxg implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6634a;

    public zzdxg(zzhgp zzhgpVar) {
        this.f6634a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final ApplicationInfo zzb() {
        ApplicationInfo applicationInfo = ((Context) this.f6634a.zzb()).getApplicationInfo();
        zzhgf.zzb(applicationInfo);
        return applicationInfo;
    }
}
