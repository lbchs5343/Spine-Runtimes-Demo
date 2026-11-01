package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgsi extends zzgyx implements zzhaj {
    private static final zzgsi zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgsl zzd;
    private int zze;

    static {
        zzgsi zzgsiVar = new zzgsi();
        zza = zzgsiVar;
        zzgyx.cb(zzgsi.class, zzgsiVar);
    }

    public static /* synthetic */ void b(zzgsi zzgsiVar, zzgsl zzgslVar) {
        zzgslVar.getClass();
        zzgsiVar.zzd = zzgslVar;
        zzgsiVar.zzc |= 1;
    }

    public static zzgsg zzb() {
        return (zzgsg) zza.cl();
    }

    public static zzgsi zzd() {
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
                return new cyk(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzgsi();
            case 4:
                return new zzgsg(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgsi.class) {
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
        return this.zze;
    }

    public final zzgsl zzf() {
        zzgsl zzgslVar = this.zzd;
        return zzgslVar == null ? zzgsl.zzd() : zzgslVar;
    }
}
