package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzcfa {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f5245a = new AtomicBoolean(false);

    public zzcfa(String str) {
    }

    public final void zza() {
        this.f5245a.set(false);
    }

    public final void zzb() {
        this.f5245a.set(true);
    }

    public final void zzc() {
        this.f5245a.set(false);
    }

    public final boolean zzd() {
        return this.f5245a.get();
    }
}
