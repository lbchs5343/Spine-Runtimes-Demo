package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgtm extends zzgyx implements zzhaj {
    private static final zzgtm zza;
    private static volatile zzhaq zzb;

    static {
        zzgtm zzgtmVar = new zzgtm();
        zza = zzgtmVar;
        zzgyx.cb(zzgtm.class, zzgtmVar);
    }

    public static zzgtm zzb() {
        return zza;
    }

    public static zzgtm zzc(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgtm) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0000", null);
            case 3:
                return new zzgtm();
            case 4:
                return new zzgtk(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgtm.class) {
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
