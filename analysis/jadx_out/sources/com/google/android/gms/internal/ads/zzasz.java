package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzasz extends zzgyx implements zzhaj {
    private static final zzasz zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;

    static {
        zzasz zzaszVar = new zzasz();
        zza = zzaszVar;
        zzgyx.cb(zzasz.class, zzaszVar);
    }

    public static /* synthetic */ void a(zzasz zzaszVar, long j) {
        zzaszVar.zzc |= 32;
        zzaszVar.zzi = j;
    }

    public static /* synthetic */ void b(zzasz zzaszVar, long j) {
        zzaszVar.zzc |= 16;
        zzaszVar.zzh = j;
    }

    public static /* synthetic */ void d(zzasz zzaszVar, long j) {
        zzaszVar.zzc |= 8;
        zzaszVar.zzg = j;
    }

    public static /* synthetic */ void e(zzasz zzaszVar, long j) {
        zzaszVar.zzc |= 1;
        zzaszVar.zzd = j;
    }

    public static /* synthetic */ void f(zzasz zzaszVar, long j) {
        zzaszVar.zzc |= 4;
        zzaszVar.zzf = j;
    }

    public static zzasy zza() {
        return (zzasy) zza.cl();
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
                return new cyk(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 3:
                return new zzasz();
            case 4:
                return new zzasy(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzasz.class) {
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
