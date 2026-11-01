package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;

/* loaded from: classes3.dex */
public final class zzfkx extends zzgyx implements zzhaj {
    private static final zzfkx zza;
    private static volatile zzhaq zzb;
    private zzgzj zzc = ahn.f10232c;

    static {
        zzfkx zzfkxVar = new zzfkx();
        zza = zzfkxVar;
        zzgyx.cb(zzfkx.class, zzfkxVar);
    }

    public static /* synthetic */ void a(zzfkx zzfkxVar, zzfkv zzfkvVar) {
        zzfkvVar.getClass();
        zzgzj zzgzjVar = zzfkxVar.zzc;
        if (!zzgzjVar.zzc()) {
            zzfkxVar.zzc = zzgyx.bn(zzgzjVar);
        }
        zzfkxVar.zzc.add(zzfkvVar);
    }

    public static void b(zzfkx zzfkxVar) {
        zzfkxVar.zzc = ahn.f10232c;
    }

    public static zzfkt zzb() {
        return (zzfkt) zza.cl();
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
                return new cyk(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfkv.class});
            case 3:
                return new zzfkx();
            case 4:
                return new zzfkt(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzfkx.class) {
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
        return this.zzc.size();
    }
}
