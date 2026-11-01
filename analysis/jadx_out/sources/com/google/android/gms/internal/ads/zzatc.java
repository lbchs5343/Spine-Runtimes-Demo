package com.google.android.gms.internal.ads;

import g.cyk;
import g.uo;

/* loaded from: classes3.dex */
public final class zzatc extends zzgyx implements zzhaj {
    private static final zzatc zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private boolean zzf;
    private zzgzf zzg = uo.f20109c;
    private long zzh;

    static {
        zzatc zzatcVar = new zzatc();
        zza = zzatcVar;
        zzgyx.cb(zzatc.class, zzatcVar);
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
                return new cyk(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 3:
                return new zzatc();
            case 4:
                return new zzatb(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzatc.class) {
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
