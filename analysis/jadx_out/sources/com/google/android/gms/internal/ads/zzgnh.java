package com.google.android.gms.internal.ads;

import g.awf;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgnh {

    /* renamed from: a, reason: collision with root package name */
    public final String f8496a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgfy f8497b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8498c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8499d;

    public /* synthetic */ zzgnh(zzgfy zzgfyVar, int i, String str, String str2) {
        this.f8497b = zzgfyVar;
        this.f8498c = i;
        this.f8499d = str;
        this.f8496a = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgnh)) {
            return false;
        }
        zzgnh zzgnhVar = (zzgnh) obj;
        return this.f8497b == zzgnhVar.f8497b && this.f8498c == zzgnhVar.f8498c && this.f8499d.equals(zzgnhVar.f8499d) && this.f8496a.equals(zzgnhVar.f8496a);
    }

    public final int hashCode() {
        return Objects.hash(this.f8497b, Integer.valueOf(this.f8498c), this.f8499d, this.f8496a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(status=");
        sb.append(this.f8497b);
        sb.append(", keyId=");
        sb.append(this.f8498c);
        sb.append(", keyType='");
        return awf.r(sb, this.f8499d, "', keyPrefix='", this.f8496a, "')");
    }

    public final int zza() {
        return this.f8498c;
    }
}
