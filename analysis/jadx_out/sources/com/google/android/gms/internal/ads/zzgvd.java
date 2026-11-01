package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgvd extends zzgyx implements zzhaj {
    private static final zzgvd zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private String zzd = "";
    private zzgue zze;

    static {
        zzgvd zzgvdVar = new zzgvd();
        zza = zzgvdVar;
        zzgyx.cb(zzgvd.class, zzgvdVar);
    }

    public static /* synthetic */ void a(zzgvd zzgvdVar, zzgue zzgueVar) {
        zzgueVar.getClass();
        zzgvdVar.zze = zzgueVar;
        zzgvdVar.zzc |= 1;
    }

    public static /* synthetic */ void b(zzgvd zzgvdVar, String str) {
        str.getClass();
        zzgvdVar.zzd = str;
    }

    public static zzgvb zzb() {
        return (zzgvb) zza.cl();
    }

    public static zzgvd zzd() {
        return zza;
    }

    public static zzgvd zzf(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgvd) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzgvd();
            case 4:
                return new zzgvb(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgvd.class) {
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

    public final zzgue zza() {
        zzgue zzgueVar = this.zze;
        return zzgueVar == null ? zzgue.zzd() : zzgueVar;
    }

    public final String zzg() {
        return this.zzd;
    }
}
