package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

@Deprecated
/* loaded from: classes3.dex */
public final class zzhds extends zzgyx implements zzhaj {
    private static final zzhds zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzhdr zze;
    private zzhdr zzf;

    static {
        zzhds zzhdsVar = new zzhds();
        zza = zzhdsVar;
        zzgyx.cb(zzhds.class, zzhdsVar);
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
                return new cyk(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", eqd.n, "zze", "zzf"});
            case 3:
                return new zzhds();
            case 4:
                return new zzhdo(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhds.class) {
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
}
