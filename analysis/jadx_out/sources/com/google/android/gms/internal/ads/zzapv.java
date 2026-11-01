package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzapv {
    public final Object zza;
    public final zzaoy zzb;
    public final zzapy zzc;
    public boolean zzd;

    public zzapv(zzapy zzapyVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzapyVar;
    }

    public zzapv(Object obj, zzaoy zzaoyVar) {
        this.zzd = false;
        this.zza = obj;
        this.zzb = zzaoyVar;
        this.zzc = null;
    }

    public static zzapv zza(zzapy zzapyVar) {
        return new zzapv(zzapyVar);
    }

    public static zzapv zzb(Object obj, zzaoy zzaoyVar) {
        return new zzapv(obj, zzaoyVar);
    }

    public final boolean zzc() {
        return this.zzc == null;
    }
}
