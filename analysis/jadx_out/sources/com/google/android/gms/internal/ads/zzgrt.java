package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgrt extends zzgyx implements zzhaj {
    private static final zzgrt zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzgrw zze;

    static {
        zzgrt zzgrtVar = new zzgrt();
        zza = zzgrtVar;
        zzgyx.cb(zzgrt.class, zzgrtVar);
    }

    public static /* synthetic */ void b(zzgrt zzgrtVar, zzgrw zzgrwVar) {
        zzgrwVar.getClass();
        zzgrtVar.zze = zzgrwVar;
        zzgrtVar.zzc |= 1;
    }

    public static zzgrr zzb() {
        return (zzgrr) zza.cl();
    }

    public static zzgrt zzd(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgrt) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzgrt();
            case 4:
                return new zzgrr(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgrt.class) {
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
        zzgrw zzgrwVar = this.zze;
        return zzgrwVar == null ? zzgrw.zzd() : zzgrwVar;
    }
}
