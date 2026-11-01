package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgsf extends zzgyx implements zzhaj {
    private static final zzgsf zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzgsl zze;
    private zzgxp zzf = zzgxp.zzb;

    static {
        zzgsf zzgsfVar = new zzgsf();
        zza = zzgsfVar;
        zzgyx.cb(zzgsf.class, zzgsfVar);
    }

    public static /* synthetic */ void b(zzgsf zzgsfVar, zzgsl zzgslVar) {
        zzgslVar.getClass();
        zzgsfVar.zze = zzgslVar;
        zzgsfVar.zzc |= 1;
    }

    public static zzgsd zzb() {
        return (zzgsd) zza.cl();
    }

    public static zzgsf zzd() {
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
                return new cyk(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new zzgsf();
            case 4:
                return new zzgsd(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgsf.class) {
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

    public final zzgsl zzf() {
        zzgsl zzgslVar = this.zze;
        return zzgslVar == null ? zzgsl.zzd() : zzgslVar;
    }

    public final zzgxp zzg() {
        return this.zzf;
    }
}
