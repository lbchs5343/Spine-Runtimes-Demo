package com.google.android.gms.internal.ads;

import j$.time.Instant;

/* loaded from: classes3.dex */
public final class zzfth {

    /* renamed from: a, reason: collision with root package name */
    public final String f8200a;

    /* renamed from: b, reason: collision with root package name */
    public final Instant f8201b;

    public zzfth() {
        this.f8200a = null;
        this.f8201b = Instant.ofEpochMilli(-1L);
    }

    public zzfth(String str, Instant instant) {
        this.f8200a = str;
        this.f8201b = instant;
    }

    public final String zza() {
        return this.f8200a;
    }

    public final Instant zzb() {
        return this.f8201b;
    }

    public final boolean zzc() {
        return this.f8200a != null && this.f8201b.isAfter(Instant.EPOCH);
    }
}
