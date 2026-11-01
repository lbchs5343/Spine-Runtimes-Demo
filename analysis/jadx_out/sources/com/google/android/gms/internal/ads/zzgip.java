package com.google.android.gms.internal.ads;

import g.awf;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgip extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final int f8359a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgin f8360b;

    public /* synthetic */ zzgip(int i, zzgin zzginVar) {
        this.f8359a = i;
        this.f8360b = zzginVar;
    }

    public static zzgim zzc() {
        return new zzgim();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgip)) {
            return false;
        }
        zzgip zzgipVar = (zzgip) obj;
        return zzgipVar.f8359a == this.f8359a && zzgipVar.f8360b == this.f8360b;
    }

    public final int hashCode() {
        return Objects.hash(zzgip.class, Integer.valueOf(this.f8359a), this.f8360b);
    }

    public final String toString() {
        return awf.x(awf.p("AesGcmSiv Parameters (variant: ", String.valueOf(this.f8360b), ", "), this.f8359a, "-byte key)");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8360b != zzgin.zzc;
    }

    public final int zzb() {
        return this.f8359a;
    }

    public final zzgin zzd() {
        return this.f8360b;
    }
}
