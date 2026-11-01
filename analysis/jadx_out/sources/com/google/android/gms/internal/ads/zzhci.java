package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;

/* loaded from: classes3.dex */
public final class zzhci extends zzgyx implements zzhaj {
    private static final zzhci zza;
    private static volatile zzhaq zzb;
    private zzgzj zzc = ahn.f10232c;

    static {
        zzhci zzhciVar = new zzhci();
        zza = zzhciVar;
        zzgyx.cb(zzhci.class, zzhciVar);
    }

    public static /* synthetic */ void a(zzhci zzhciVar, zzhcg zzhcgVar) {
        zzhcgVar.getClass();
        zzgzj zzgzjVar = zzhciVar.zzc;
        if (!zzgzjVar.zzc()) {
            zzhciVar.zzc = zzgyx.bn(zzgzjVar);
        }
        zzhciVar.zzc.add(zzhcgVar);
    }

    public static zzhch zzc() {
        return (zzhch) zza.cl();
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
                return new cyk(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzhcg.class});
            case 3:
                return new zzhci();
            case 4:
                return new zzhch(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhci.class) {
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
