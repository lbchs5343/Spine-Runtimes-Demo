package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;
import g.uo;

/* loaded from: classes3.dex */
public final class zzfqm extends zzgyx implements zzhaj {
    private static final zzfqm zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgzf zzd = uo.f20109c;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";

    static {
        zzfqm zzfqmVar = new zzfqm();
        zza = zzfqmVar;
        zzgyx.cb(zzfqm.class, zzfqmVar);
    }

    public static /* synthetic */ void a(zzfqm zzfqmVar, String str) {
        str.getClass();
        zzfqmVar.zzc |= 1;
        zzfqmVar.zze = str;
    }

    public static /* synthetic */ void b(zzfqm zzfqmVar) {
        zzgzf zzgzfVar = zzfqmVar.zzd;
        if (!zzgzfVar.zzc()) {
            zzfqmVar.zzd = zzgyx.cg(zzgzfVar);
        }
        zzfqmVar.zzd.zzi(2);
    }

    public static zzfqk zza() {
        return (zzfqk) zza.cl();
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
                return new cyk(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ࠞ\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzc", "zzd", eqd.i, "zze", "zzf", "zzg"});
            case 3:
                return new zzfqm();
            case 4:
                return new zzfqk(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzfqm.class) {
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
