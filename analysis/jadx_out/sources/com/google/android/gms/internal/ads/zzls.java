package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzls {
    public static final zzls zza;
    public static final zzls zzb;
    public final long zzc;
    public final long zzd;

    static {
        zzls zzlsVar = new zzls(0L, 0L);
        zza = zzlsVar;
        new zzls(Long.MAX_VALUE, Long.MAX_VALUE);
        new zzls(Long.MAX_VALUE, 0L);
        new zzls(0L, Long.MAX_VALUE);
        zzb = zzlsVar;
    }

    public zzls(long j, long j2) {
        zzdb.zzd(j >= 0);
        zzdb.zzd(j2 >= 0);
        this.zzc = j;
        this.zzd = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzls.class == obj.getClass()) {
            zzls zzlsVar = (zzls) obj;
            if (this.zzc == zzlsVar.zzc && this.zzd == zzlsVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zzc) * 31) + ((int) this.zzd);
    }
}
