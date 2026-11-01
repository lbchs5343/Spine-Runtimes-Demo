package com.google.android.gms.internal.ads;

import g.awf;
import g.tn;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgql extends zzgqo {

    /* renamed from: a, reason: collision with root package name */
    public final zzgqi f8603a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8604b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8605c;

    /* renamed from: d, reason: collision with root package name */
    public final zzgqj f8606d;

    public /* synthetic */ zzgql(int i, int i2, zzgqj zzgqjVar, zzgqi zzgqiVar) {
        this.f8604b = i;
        this.f8605c = i2;
        this.f8606d = zzgqjVar;
        this.f8603a = zzgqiVar;
    }

    public static zzgqh zze() {
        return new zzgqh();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgql)) {
            return false;
        }
        zzgql zzgqlVar = (zzgql) obj;
        return zzgqlVar.f8604b == this.f8604b && zzgqlVar.zzd() == zzd() && zzgqlVar.f8606d == this.f8606d && zzgqlVar.f8603a == this.f8603a;
    }

    public final int hashCode() {
        return Objects.hash(zzgql.class, Integer.valueOf(this.f8604b), Integer.valueOf(this.f8605c), this.f8606d, this.f8603a);
    }

    public final String toString() {
        StringBuilder o = tn.o("HMAC Parameters (variant: ", String.valueOf(this.f8606d), ", hashType: ", String.valueOf(this.f8603a), ", ");
        o.append(this.f8605c);
        o.append("-byte tags, and ");
        return awf.x(o, this.f8604b, "-byte key)");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8606d != zzgqj.zzd;
    }

    public final int zzb() {
        return this.f8605c;
    }

    public final int zzc() {
        return this.f8604b;
    }

    public final int zzd() {
        zzgqj zzgqjVar = zzgqj.zzd;
        int i = this.f8605c;
        zzgqj zzgqjVar2 = this.f8606d;
        if (zzgqjVar2 == zzgqjVar) {
            return i;
        }
        if (zzgqjVar2 == zzgqj.zza || zzgqjVar2 == zzgqj.zzb || zzgqjVar2 == zzgqj.zzc) {
            return i + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final zzgqi zzf() {
        return this.f8603a;
    }

    public final zzgqj zzg() {
        return this.f8606d;
    }
}
