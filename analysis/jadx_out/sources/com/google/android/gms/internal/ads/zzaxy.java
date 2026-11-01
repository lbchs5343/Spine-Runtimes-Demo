package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzaxy extends zzgyx implements zzhaj {
    private static final zzaxy zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzayb zzd;
    private zzgxp zze;
    private zzgxp zzf;

    static {
        zzaxy zzaxyVar = new zzaxy();
        zza = zzaxyVar;
        zzgyx.cb(zzaxy.class, zzaxyVar);
    }

    public zzaxy() {
        zzgxp zzgxpVar = zzgxp.zzb;
        this.zze = zzgxpVar;
        this.zzf = zzgxpVar;
    }

    public static zzaxy zzb(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzaxy) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new zzaxy();
            case 4:
                return new zzaxw(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzaxy.class) {
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

    public final zzayb zzc() {
        zzayb zzaybVar = this.zzd;
        return zzaybVar == null ? zzayb.zzg() : zzaybVar;
    }

    public final zzgxp zzd() {
        return this.zzf;
    }

    public final zzgxp zzf() {
        return this.zze;
    }
}
