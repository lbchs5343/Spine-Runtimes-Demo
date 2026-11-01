package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgsr extends zzgyx implements zzhaj {
    private static final zzgsr zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgsu zzd;
    private int zze;

    static {
        zzgsr zzgsrVar = new zzgsr();
        zza = zzgsrVar;
        zzgyx.cb(zzgsr.class, zzgsrVar);
    }

    public static /* synthetic */ void b(zzgsr zzgsrVar, zzgsu zzgsuVar) {
        zzgsuVar.getClass();
        zzgsrVar.zzd = zzgsuVar;
        zzgsrVar.zzc |= 1;
    }

    public static zzgsp zzb() {
        return (zzgsp) zza.cl();
    }

    public static zzgsr zzd(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgsr) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzgsr();
            case 4:
                return new zzgsp(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgsr.class) {
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

    public final zzgsu zzf() {
        zzgsu zzgsuVar = this.zzd;
        return zzgsuVar == null ? zzgsu.zzd() : zzgsuVar;
    }
}
