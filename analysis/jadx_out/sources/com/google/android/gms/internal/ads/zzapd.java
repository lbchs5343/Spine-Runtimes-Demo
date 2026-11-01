package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzapd {

    /* renamed from: a, reason: collision with root package name */
    public int f4434a = 2500;

    /* renamed from: b, reason: collision with root package name */
    public int f4435b;

    public final int zza() {
        return this.f4435b;
    }

    public final int zzb() {
        return this.f4434a;
    }

    public final void zzc(zzapy zzapyVar) throws zzapy {
        int i = this.f4435b + 1;
        this.f4435b = i;
        int i2 = this.f4434a;
        this.f4434a = i2 + i2;
        if (i > 1) {
            throw zzapyVar;
        }
    }
}
