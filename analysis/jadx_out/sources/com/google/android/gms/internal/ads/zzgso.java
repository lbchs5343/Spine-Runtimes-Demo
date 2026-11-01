package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgso extends zzgyx implements zzhaj {
    private static final zzgso zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzgsu zze;
    private zzgxp zzf = zzgxp.zzb;

    static {
        zzgso zzgsoVar = new zzgso();
        zza = zzgsoVar;
        zzgyx.cb(zzgso.class, zzgsoVar);
    }

    public static /* synthetic */ void b(zzgso zzgsoVar, zzgsu zzgsuVar) {
        zzgsuVar.getClass();
        zzgsoVar.zze = zzgsuVar;
        zzgsoVar.zzc |= 1;
    }

    public static zzgsm zzb() {
        return (zzgsm) zza.cl();
    }

    public static zzgso zzd(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgso) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new zzgso();
            case 4:
                return new zzgsm(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgso.class) {
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

    public final zzgsu zzf() {
        zzgsu zzgsuVar = this.zze;
        return zzgsuVar == null ? zzgsu.zzd() : zzgsuVar;
    }

    public final zzgxp zzg() {
        return this.zzf;
    }
}
