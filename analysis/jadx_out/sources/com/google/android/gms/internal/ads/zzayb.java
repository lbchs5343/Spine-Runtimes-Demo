package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzayb extends zzgyx implements zzhaj {
    private static final zzayb zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private long zzf;
    private long zzg;
    private long zzh;

    static {
        zzayb zzaybVar = new zzayb();
        zza = zzaybVar;
        zzgyx.cb(zzayb.class, zzaybVar);
    }

    public static /* synthetic */ void a(zzayb zzaybVar, String str) {
        str.getClass();
        zzaybVar.zzc |= 2;
        zzaybVar.zze = str;
    }

    public static /* synthetic */ void b(zzayb zzaybVar, String str) {
        str.getClass();
        zzaybVar.zzc |= 1;
        zzaybVar.zzd = str;
    }

    public static /* synthetic */ void d(zzayb zzaybVar, long j) {
        zzaybVar.zzc |= 16;
        zzaybVar.zzh = j;
    }

    public static /* synthetic */ void e(zzayb zzaybVar, long j) {
        zzaybVar.zzc |= 4;
        zzaybVar.zzf = j;
    }

    public static /* synthetic */ void f(zzayb zzaybVar, long j) {
        zzaybVar.zzc |= 8;
        zzaybVar.zzg = j;
    }

    public static zzaxz zzd() {
        return (zzaxz) zza.cl();
    }

    public static zzayb zzg() {
        return zza;
    }

    public static zzayb zzh(zzgxp zzgxpVar) throws zzgzm {
        return (zzayb) zzgyx.by(zza, zzgxpVar);
    }

    public static zzayb zzi(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzayb) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 3:
                return new zzayb();
            case 4:
                return new zzaxz(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzayb.class) {
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

    public final long zza() {
        return this.zzg;
    }

    public final long zzb() {
        return this.zzf;
    }

    public final long zzc() {
        return this.zzh;
    }

    public final String zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzd;
    }
}
