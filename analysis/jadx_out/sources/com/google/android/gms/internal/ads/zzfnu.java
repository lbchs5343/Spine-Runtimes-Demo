package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes3.dex */
public final class zzfnu {

    /* renamed from: a, reason: collision with root package name */
    public final String f8078a = "Ad overlay";

    /* renamed from: b, reason: collision with root package name */
    public final zzfpi f8079b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8080c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfnd f8081d;

    public zzfnu(View view, zzfnd zzfndVar, String str) {
        this.f8079b = new zzfpi(view);
        this.f8080c = view.getClass().getCanonicalName();
        this.f8081d = zzfndVar;
    }

    public final zzfnd zza() {
        return this.f8081d;
    }

    public final zzfpi zzb() {
        return this.f8079b;
    }

    public final String zzc() {
        return this.f8078a;
    }

    public final String zzd() {
        return this.f8080c;
    }
}
