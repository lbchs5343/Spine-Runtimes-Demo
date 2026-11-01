package com.google.android.gms.internal.ads;

import g.awf;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgjq extends zzggt {

    /* renamed from: a, reason: collision with root package name */
    public final zzggt f8397a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgjo f8398b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8399c;

    /* renamed from: d, reason: collision with root package name */
    public final zzgjn f8400d;

    public /* synthetic */ zzgjq(zzgjo zzgjoVar, String str, zzgjn zzgjnVar, zzggt zzggtVar) {
        this.f8398b = zzgjoVar;
        this.f8399c = str;
        this.f8400d = zzgjnVar;
        this.f8397a = zzggtVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgjq)) {
            return false;
        }
        zzgjq zzgjqVar = (zzgjq) obj;
        return zzgjqVar.f8400d.equals(this.f8400d) && zzgjqVar.f8397a.equals(this.f8397a) && zzgjqVar.f8399c.equals(this.f8399c) && zzgjqVar.f8398b.equals(this.f8398b);
    }

    public final int hashCode() {
        return Objects.hash(zzgjq.class, this.f8399c, this.f8400d, this.f8397a, this.f8398b);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8400d);
        String valueOf2 = String.valueOf(this.f8397a);
        String valueOf3 = String.valueOf(this.f8398b);
        StringBuilder sb = new StringBuilder("LegacyKmsEnvelopeAead Parameters (kekUri: ");
        awf.y(sb, this.f8399c, ", dekParsingStrategy: ", valueOf, ", dekParametersForNewKeys: ");
        return awf.r(sb, valueOf2, ", variant: ", valueOf3, ")");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8398b != zzgjo.zzb;
    }

    public final zzggt zzb() {
        return this.f8397a;
    }

    public final zzgjo zzc() {
        return this.f8398b;
    }

    public final String zzd() {
        return this.f8399c;
    }
}
