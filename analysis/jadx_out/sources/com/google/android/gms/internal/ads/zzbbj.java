package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* loaded from: classes3.dex */
public final class zzbbj {

    /* renamed from: a, reason: collision with root package name */
    public final long f4686a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4687b;

    /* renamed from: c, reason: collision with root package name */
    public final InputStream f4688c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4689d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4690e;

    public zzbbj(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        this.f4688c = inputStream;
        this.f4689d = z;
        this.f4690e = z2;
        this.f4686a = j;
        this.f4687b = z3;
    }

    public static zzbbj zzb(InputStream inputStream, boolean z, boolean z2, long j, boolean z3) {
        return new zzbbj(inputStream, z, z2, j, z3);
    }

    public final long zza() {
        return this.f4686a;
    }

    public final InputStream zzc() {
        return this.f4688c;
    }

    public final boolean zzd() {
        return this.f4689d;
    }

    public final boolean zze() {
        return this.f4687b;
    }

    public final boolean zzf() {
        return this.f4690e;
    }
}
