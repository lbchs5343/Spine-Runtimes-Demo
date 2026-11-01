package com.google.android.gms.internal.ads;

import g.awf;
import g.tn;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzghj extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final int f8302a;

    /* renamed from: b, reason: collision with root package name */
    public final zzghh f8303b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8304c;

    /* renamed from: d, reason: collision with root package name */
    public final zzghg f8305d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8306e;

    /* renamed from: f, reason: collision with root package name */
    public final int f8307f;

    public /* synthetic */ zzghj(int i, int i2, int i3, int i4, zzghh zzghhVar, zzghg zzghgVar) {
        this.f8304c = i;
        this.f8306e = i2;
        this.f8307f = i3;
        this.f8302a = i4;
        this.f8303b = zzghhVar;
        this.f8305d = zzghgVar;
    }

    public static zzghf zzf() {
        return new zzghf();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzghj)) {
            return false;
        }
        zzghj zzghjVar = (zzghj) obj;
        return zzghjVar.f8304c == this.f8304c && zzghjVar.f8306e == this.f8306e && zzghjVar.f8307f == this.f8307f && zzghjVar.f8302a == this.f8302a && zzghjVar.f8303b == this.f8303b && zzghjVar.f8305d == this.f8305d;
    }

    public final int hashCode() {
        return Objects.hash(zzghj.class, Integer.valueOf(this.f8304c), Integer.valueOf(this.f8306e), Integer.valueOf(this.f8307f), Integer.valueOf(this.f8302a), this.f8303b, this.f8305d);
    }

    public final String toString() {
        StringBuilder o = tn.o("AesCtrHmacAead Parameters (variant: ", String.valueOf(this.f8303b), ", hashType: ", String.valueOf(this.f8305d), ", ");
        o.append(this.f8307f);
        o.append("-byte IV, and ");
        o.append(this.f8302a);
        o.append("-byte tags, and ");
        o.append(this.f8304c);
        o.append("-byte AES key, and ");
        return awf.x(o, this.f8306e, "-byte HMAC key)");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8303b != zzghh.zzc;
    }

    public final int zzb() {
        return this.f8304c;
    }

    public final int zzc() {
        return this.f8306e;
    }

    public final int zzd() {
        return this.f8307f;
    }

    public final int zze() {
        return this.f8302a;
    }

    public final zzghg zzg() {
        return this.f8305d;
    }

    public final zzghh zzh() {
        return this.f8303b;
    }
}
