package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzfkv extends zzgyx implements zzhaj {
    private static final zzfkv zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzfks zzd;

    static {
        zzfkv zzfkvVar = new zzfkv();
        zza = zzfkvVar;
        zzgyx.cb(zzfkv.class, zzfkvVar);
    }

    public static /* synthetic */ void a(zzfkv zzfkvVar, zzfks zzfksVar) {
        zzfksVar.getClass();
        zzfkvVar.zzd = zzfksVar;
        zzfkvVar.zzc |= 1;
    }

    public static zzfku zza() {
        return (zzfku) zza.cl();
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
                return new cyk(zza, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"zzc", "zzd"});
            case 3:
                return new zzfkv();
            case 4:
                return new zzfku(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzfkv.class) {
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
