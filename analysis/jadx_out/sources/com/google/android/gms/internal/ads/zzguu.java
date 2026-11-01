package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzguu extends zzgyx implements zzhaj {
    private static final zzguu zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzgux zze;

    static {
        zzguu zzguuVar = new zzguu();
        zza = zzguuVar;
        zzgyx.cb(zzguu.class, zzguuVar);
    }

    public static /* synthetic */ void a(zzguu zzguuVar, zzgux zzguxVar) {
        zzguxVar.getClass();
        zzguuVar.zze = zzguxVar;
        zzguuVar.zzc |= 1;
    }

    public static zzgus zzb() {
        return (zzgus) zza.cl();
    }

    public static zzguu zzd(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzguu) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
    }

    public static zzhaq zzg() {
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
                return new cyk(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzguu();
            case 4:
                return new zzgus(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzguu.class) {
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

    public final zzgux zzf() {
        zzgux zzguxVar = this.zze;
        return zzguxVar == null ? zzgux.zzc() : zzguxVar;
    }
}
