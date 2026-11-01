package com.google.android.gms.internal.ads;

import android.view.View;
import g.bjq;
import g.bmo;
import g.bpp;

/* loaded from: classes3.dex */
public final class zzbdd extends zzbde {

    /* renamed from: a, reason: collision with root package name */
    public final String f4754a;

    /* renamed from: b, reason: collision with root package name */
    public final bmo f4755b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4756c;

    public zzbdd(bmo bmoVar, String str, String str2) {
        this.f4755b = bmoVar;
        this.f4756c = str;
        this.f4754a = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final String zzb() {
        return this.f4756c;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final String zzc() {
        return this.f4754a;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zzd(bjq bjqVar) {
        if (bjqVar == null) {
            return;
        }
        this.f4755b.zza((View) bpp.b(bjqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zze() {
        this.f4755b.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void zzf() {
        this.f4755b.zzc();
    }
}
