package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;

/* loaded from: classes3.dex */
public final class zzgur extends zzgyx implements zzhaj {
    private static final zzgur zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgzj zzd = ahn.f10232c;

    static {
        zzgur zzgurVar = new zzgur();
        zza = zzgurVar;
        zzgyx.cb(zzgur.class, zzgurVar);
    }

    public static /* synthetic */ void a(zzgur zzgurVar, zzgup zzgupVar) {
        zzgupVar.getClass();
        zzgzj zzgzjVar = zzgurVar.zzd;
        if (!zzgzjVar.zzc()) {
            zzgurVar.zzd = zzgyx.bn(zzgzjVar);
        }
        zzgurVar.zzd.add(zzgupVar);
    }

    public static zzgun zza() {
        return (zzgun) zza.cl();
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
                return new cyk(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", zzgup.class});
            case 3:
                return new zzgur();
            case 4:
                return new zzgun(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgur.class) {
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
