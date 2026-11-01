package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes3.dex */
public final class zzcvy implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcvw f5780a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5781b;

    public zzcvy(zzcvw zzcvwVar, zzhgp zzhgpVar) {
        this.f5780a = zzcvwVar;
        this.f5781b = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        ((zzchq) this.f5781b).zza();
        Context context = this.f5780a.f5774c;
        zzhgf.zzb(context);
        return context;
    }
}
