package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzatp extends zzgyx implements zzhaj {
    private static final zzatp zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgzj zzd = ahn.f10232c;
    private zzgxp zze = zzgxp.zzb;
    private int zzf = 1;
    private int zzg = 1;

    static {
        zzatp zzatpVar = new zzatp();
        zza = zzatpVar;
        zzgyx.cb(zzatp.class, zzatpVar);
    }

    public static /* synthetic */ void a(zzatp zzatpVar, zzgxp zzgxpVar) {
        zzgzj zzgzjVar = zzatpVar.zzd;
        if (!zzgzjVar.zzc()) {
            zzatpVar.zzd = zzgyx.bn(zzgzjVar);
        }
        zzatpVar.zzd.add(zzgxpVar);
    }

    public static /* synthetic */ void b(zzatp zzatpVar) {
        zzatpVar.zzf = 4;
        zzatpVar.zzc |= 2;
    }

    public static /* synthetic */ void d(zzatp zzatpVar, int i) {
        zzatpVar.zzg = i - 1;
        zzatpVar.zzc |= 4;
    }

    public static /* synthetic */ void e(zzatp zzatpVar, zzgxp zzgxpVar) {
        zzatpVar.zzc |= 1;
        zzatpVar.zze = zzgxpVar;
    }

    public static zzato zza() {
        return (zzato) zza.cl();
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
                return new cyk(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"zzc", "zzd", "zze", "zzf", eqd.f15981c, "zzg", eqd.t});
            case 3:
                return new zzatp();
            case 4:
                return new zzato(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzatp.class) {
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
