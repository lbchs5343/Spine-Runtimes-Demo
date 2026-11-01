package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgsc extends zzgyx implements zzhaj {
    private static final zzgsc zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgsi zzd;
    private zzgtt zze;

    static {
        zzgsc zzgscVar = new zzgsc();
        zza = zzgscVar;
        zzgyx.cb(zzgsc.class, zzgscVar);
    }

    public static /* synthetic */ void a(zzgsc zzgscVar, zzgsi zzgsiVar) {
        zzgsiVar.getClass();
        zzgscVar.zzd = zzgsiVar;
        zzgscVar.zzc |= 1;
    }

    public static /* synthetic */ void b(zzgsc zzgscVar, zzgtt zzgttVar) {
        zzgttVar.getClass();
        zzgscVar.zze = zzgttVar;
        zzgscVar.zzc |= 2;
    }

    public static zzgsa zza() {
        return (zzgsa) zza.cl();
    }

    public static zzgsc zzc(zzgxp zzgxpVar, zzgyh zzgyhVar) throws zzgzm {
        return (zzgsc) zzgyx.bu(zza, zzgxpVar, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzgsc();
            case 4:
                return new zzgsa(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgsc.class) {
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

    public final zzgsi zzd() {
        zzgsi zzgsiVar = this.zzd;
        return zzgsiVar == null ? zzgsi.zzd() : zzgsiVar;
    }

    public final zzgtt zzf() {
        zzgtt zzgttVar = this.zze;
        return zzgttVar == null ? zzgtt.zzf() : zzgttVar;
    }
}
