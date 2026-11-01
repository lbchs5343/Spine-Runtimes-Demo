package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgua extends zzgyx implements zzhaj {
    private static final zzgua zza;
    private static volatile zzhaq zzb;
    private String zzc = "";
    private zzgxp zzd = zzgxp.zzb;
    private int zze;

    static {
        zzgua zzguaVar = new zzgua();
        zza = zzguaVar;
        zzgyx.cb(zzgua.class, zzguaVar);
    }

    public static /* synthetic */ void b(zzgua zzguaVar, zzgxp zzgxpVar) {
        zzgxpVar.getClass();
        zzguaVar.zzd = zzgxpVar;
    }

    public static /* synthetic */ void d(zzgua zzguaVar, String str) {
        str.getClass();
        zzguaVar.zzc = str;
    }

    public static zzgtx zza() {
        return (zzgtx) zza.cl();
    }

    public static zzgua zzd() {
        return zza;
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
                return new cyk(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzgua();
            case 4:
                return new zzgtx(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgua.class) {
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

    public final zzgty zzb() {
        int i = this.zze;
        zzgty zzgtyVar = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : zzgty.REMOTE : zzgty.ASYMMETRIC_PUBLIC : zzgty.ASYMMETRIC_PRIVATE : zzgty.SYMMETRIC : zzgty.UNKNOWN_KEYMATERIAL;
        return zzgtyVar == null ? zzgty.UNRECOGNIZED : zzgtyVar;
    }

    public final zzgxp zzf() {
        return this.zzd;
    }

    public final String zzg() {
        return this.zzc;
    }
}
