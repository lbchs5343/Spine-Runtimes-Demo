package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public enum zzgzo {
    zza("VOID"),
    zzb("INT"),
    zzc("LONG"),
    zzd("FLOAT"),
    zze("DOUBLE"),
    zzf("BOOLEAN"),
    zzg("STRING"),
    zzh("BYTE_STRING"),
    zzi("ENUM"),
    zzj("MESSAGE");

    private final Class zzl;

    static {
        zzgxp zzgxpVar = zzgxp.zzb;
    }

    zzgzo(String str) {
        this.zzl = r2;
    }

    public final Class zza() {
        return this.zzl;
    }
}
