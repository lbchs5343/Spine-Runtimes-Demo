package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgtq extends zzgyx implements zzhaj {
    private static final zzgtq zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzgtw zze;
    private zzgxp zzf = zzgxp.zzb;

    static {
        zzgtq zzgtqVar = new zzgtq();
        zza = zzgtqVar;
        zzgyx.cb(zzgtq.class, zzgtqVar);
    }

    public static /* synthetic */ void b(zzgtq zzgtqVar, zzgtw zzgtwVar) {
        zzgtwVar.getClass();
        zzgtqVar.zze = zzgtwVar;
        zzgtqVar.zzc |= 1;
    }

    public static zzgto zzb() {
        return (zzgto) zza.cl();
    }

    public static zzgtq zzd() {
        return zza;
    }

    public static zzgtq zzf(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgtq) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
    }

    public static zzhaq zzi() {
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
                return new zzgtq();
            case 4:
                return new zzgto(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgtq.class) {
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

    public final zzgtw zzg() {
        zzgtw zzgtwVar = this.zze;
        return zzgtwVar == null ? zzgtw.zzf() : zzgtwVar;
    }

    public final zzgxp zzh() {
        return this.zzf;
    }
}
