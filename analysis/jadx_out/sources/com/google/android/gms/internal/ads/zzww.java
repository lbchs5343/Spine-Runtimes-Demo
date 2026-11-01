package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzww {
    public final long zza;
    public final long zzb;

    public zzww(long j, long j2) {
        this.zza = j;
        this.zzb = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzww)) {
            return false;
        }
        zzww zzwwVar = (zzww) obj;
        return this.zza == zzwwVar.zza && this.zzb == zzwwVar.zzb;
    }

    public final int hashCode() {
        return (((int) this.zza) * 31) + ((int) this.zzb);
    }
}
