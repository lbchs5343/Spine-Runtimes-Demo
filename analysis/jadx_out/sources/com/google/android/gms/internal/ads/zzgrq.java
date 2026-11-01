package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgrq extends zzgyx implements zzhaj {
    private static final zzgrq zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzgxp zze = zzgxp.zzb;
    private zzgrw zzf;

    static {
        zzgrq zzgrqVar = new zzgrq();
        zza = zzgrqVar;
        zzgyx.cb(zzgrq.class, zzgrqVar);
    }

    public static /* synthetic */ void b(zzgrq zzgrqVar, zzgrw zzgrwVar) {
        zzgrwVar.getClass();
        zzgrqVar.zzf = zzgrwVar;
        zzgrqVar.zzc |= 1;
    }

    public static zzgro zzb() {
        return (zzgro) zza.cl();
    }

    public static zzgrq zzd(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgrq) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new zzgrq();
            case 4:
                return new zzgro(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgrq.class) {
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

    public final zzgrw zzf() {
        zzgrw zzgrwVar = this.zzf;
        return zzgrwVar == null ? zzgrw.zzd() : zzgrwVar;
    }

    public final zzgxp zzg() {
        return this.zze;
    }
}
