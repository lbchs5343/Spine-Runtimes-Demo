package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzast extends zzgyx implements zzhaj {
    private static final zzast zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private long zze = -1;

    static {
        zzast zzastVar = new zzast();
        zza = zzastVar;
        zzgyx.cb(zzast.class, zzastVar);
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
                return new cyk(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001", new Object[]{"zzc", "zzd", eqd.p, "zze"});
            case 3:
                return new zzast();
            case 4:
                return new zzass(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzast.class) {
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
