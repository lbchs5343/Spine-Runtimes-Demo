package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgtt extends zzgyx implements zzhaj {
    private static final zzgtt zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgtw zzd;
    private int zze;
    private int zzf;

    static {
        zzgtt zzgttVar = new zzgtt();
        zza = zzgttVar;
        zzgyx.cb(zzgtt.class, zzgttVar);
    }

    public static /* synthetic */ void b(zzgtt zzgttVar, zzgtw zzgtwVar) {
        zzgtwVar.getClass();
        zzgttVar.zzd = zzgtwVar;
        zzgttVar.zzc |= 1;
    }

    public static zzgtr zzc() {
        return (zzgtr) zza.cl();
    }

    public static zzgtt zzf() {
        return zza;
    }

    public static zzgtt zzg(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgtt) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new zzgtt();
            case 4:
                return new zzgtr(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgtt.class) {
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
        return this.zze;
    }

    public final int zzb() {
        return this.zzf;
    }

    public final zzgtw zzh() {
        zzgtw zzgtwVar = this.zzd;
        return zzgtwVar == null ? zzgtw.zzf() : zzgtwVar;
    }
}
