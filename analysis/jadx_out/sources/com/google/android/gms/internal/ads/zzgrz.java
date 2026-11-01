package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgrz extends zzgyx implements zzhaj {
    private static final zzgrz zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzgsf zze;
    private zzgtq zzf;

    static {
        zzgrz zzgrzVar = new zzgrz();
        zza = zzgrzVar;
        zzgyx.cb(zzgrz.class, zzgrzVar);
    }

    public static /* synthetic */ void a(zzgrz zzgrzVar, zzgsf zzgsfVar) {
        zzgsfVar.getClass();
        zzgrzVar.zze = zzgsfVar;
        zzgrzVar.zzc |= 1;
    }

    public static /* synthetic */ void b(zzgrz zzgrzVar, zzgtq zzgtqVar) {
        zzgtqVar.getClass();
        zzgrzVar.zzf = zzgtqVar;
        zzgrzVar.zzc |= 2;
    }

    public static zzgrx zzb() {
        return (zzgrx) zza.cl();
    }

    public static zzgrz zzd(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgrz) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
    }

    public static zzhaq zzh() {
        return zza.zzbN();
    }

    @Override // com.google.android.gms.internal.ads.zzgyx
    public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
        zzhaq zzhaqVar;
        switch (zzgywVar.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new cyk(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new zzgrz();
            case 4:
                return new zzgrx(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgrz.class) {
                    try {
                        zzhaqVar = zzb;
                        if (zzhaqVar == null) {
                            zzhaqVar = new zzgys(zza);
                            zzb = zzhaqVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return zzhaqVar;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzgsf zzf() {
        zzgsf zzgsfVar = this.zze;
        return zzgsfVar == null ? zzgsf.zzd() : zzgsfVar;
    }

    public final zzgtq zzg() {
        zzgtq zzgtqVar = this.zzf;
        return zzgtqVar == null ? zzgtq.zzd() : zzgtqVar;
    }
}
