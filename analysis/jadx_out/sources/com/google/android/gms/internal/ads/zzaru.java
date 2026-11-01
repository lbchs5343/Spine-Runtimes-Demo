package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzaru extends zzgyx implements zzhaj {
    private static final zzaru zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd = 2;

    static {
        zzaru zzaruVar = new zzaru();
        zza = zzaruVar;
        zzgyx.cb(zzaru.class, zzaruVar);
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
                return new cyk(zza, "\u0004\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b᠌\u0000", new Object[]{"zzc", "zzd", eqd.f15985g});
            case 3:
                return new zzaru();
            case 4:
                return new zzart(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzaru.class) {
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
