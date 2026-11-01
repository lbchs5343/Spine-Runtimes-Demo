package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgtw extends zzgyx implements zzhaj {
    private static final zzgtw zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;

    static {
        zzgtw zzgtwVar = new zzgtw();
        zza = zzgtwVar;
        zzgyx.cb(zzgtw.class, zzgtwVar);
    }

    public static zzgtu zzc() {
        return (zzgtu) zza.cl();
    }

    public static zzgtw zzf() {
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
                return new cyk(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzc", "zzd"});
            case 3:
                return new zzgtw();
            case 4:
                return new zzgtu(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgtw.class) {
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
        return this.zzd;
    }

    public final zzgtn zzb() {
        int i = this.zzc;
        zzgtn zzgtnVar = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : zzgtn.SHA224 : zzgtn.SHA512 : zzgtn.SHA256 : zzgtn.SHA384 : zzgtn.SHA1 : zzgtn.UNKNOWN_HASH;
        return zzgtnVar == null ? zzgtn.UNRECOGNIZED : zzgtnVar;
    }
}
