package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzhcn extends zzgyx implements zzhaj {
    private static final zzhcn zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private long zze;
    private zzgxp zzf = zzgxp.zzb;

    static {
        zzhcn zzhcnVar = new zzhcn();
        zza = zzhcnVar;
        zzgyx.cb(zzhcn.class, zzhcnVar);
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
                return new cyk(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", eqd.f15982d, "zze", "zzf"});
            case 3:
                return new zzhcn();
            case 4:
                return new zzhcl(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhcn.class) {
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
