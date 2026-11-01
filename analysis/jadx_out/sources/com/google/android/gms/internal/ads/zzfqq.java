package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzfqq extends zzgyx implements zzhaj {
    private static final zzfqq zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private zzfqm zzg;

    static {
        zzfqq zzfqqVar = new zzfqq();
        zza = zzfqqVar;
        zzgyx.cb(zzfqq.class, zzfqqVar);
    }

    public static /* synthetic */ void a(zzfqq zzfqqVar, String str) {
        str.getClass();
        zzfqqVar.zzc |= 2;
        zzfqqVar.zze = str;
    }

    public static /* synthetic */ void b(zzfqq zzfqqVar) {
        zzfqqVar.zzd = 1;
        zzfqqVar.zzc = 1 | zzfqqVar.zzc;
    }

    public static /* synthetic */ void d(zzfqq zzfqqVar, zzfqm zzfqmVar) {
        zzfqmVar.getClass();
        zzfqqVar.zzg = zzfqmVar;
        zzfqqVar.zzc |= 8;
    }

    public static zzfqn zza() {
        return (zzfqn) zza.cl();
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
                return new cyk(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzc", "zzd", eqd.s, "zze", "zzf", "zzg"});
            case 3:
                return new zzfqq();
            case 4:
                return new zzfqn(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzfqq.class) {
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
