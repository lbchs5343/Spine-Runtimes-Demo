package com.google.android.gms.internal.ads;

import g.tn;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzgna extends zzggj {

    /* renamed from: a, reason: collision with root package name */
    public final zzgox f8490a;

    public zzgna(zzgox zzgoxVar) {
        this.f8490a = zzgoxVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgna)) {
            return false;
        }
        zzgox zzgoxVar = ((zzgna) obj).f8490a;
        zzgox zzgoxVar2 = this.f8490a;
        return zzgoxVar2.zzc().zzg().equals(zzgoxVar.zzc().zzg()) && zzgoxVar2.zzc().zzi().equals(zzgoxVar.zzc().zzi()) && zzgoxVar2.zzc().zzh().equals(zzgoxVar.zzc().zzh());
    }

    public final int hashCode() {
        zzgox zzgoxVar = this.f8490a;
        return Objects.hash(zzgoxVar.zzc(), zzgoxVar.zzd());
    }

    public final String toString() {
        zzgox zzgoxVar = this.f8490a;
        String zzi = zzgoxVar.zzc().zzi();
        int ordinal = zzgoxVar.zzc().zzg().ordinal();
        return tn.r("(typeUrl=", zzi, ", outputPrefixType=", ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK", ")");
    }

    @Override // com.google.android.gms.internal.ads.zzggj
    public final boolean zza() {
        return this.f8490a.zzc().zzg() != zzgve.RAW;
    }

    public final zzgox zzb() {
        return this.f8490a;
    }
}
