package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzoz {
    public static final zzoz zza = new zzox().zzd();
    public final boolean zzb;
    public final boolean zzc;
    public final boolean zzd;

    public /* synthetic */ zzoz(zzox zzoxVar) {
        this.zzb = zzoxVar.f8835a;
        this.zzc = zzoxVar.f8836b;
        this.zzd = zzoxVar.f8837c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzoz.class == obj.getClass()) {
            zzoz zzozVar = (zzoz) obj;
            if (this.zzb == zzozVar.zzb && this.zzc == zzozVar.zzc && this.zzd == zzozVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        boolean z = this.zzb;
        boolean z2 = this.zzc;
        return (z2 ? 1 : 0) + (z2 ? 1 : 0) + ((z ? 1 : 0) << 2) + (this.zzd ? 1 : 0);
    }
}
