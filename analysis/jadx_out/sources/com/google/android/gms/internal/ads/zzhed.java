package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzhed extends zzgyx implements zzhaj {
    private static final zzhed zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private zzgxp zzf;
    private zzgxp zzg;

    static {
        zzhed zzhedVar = new zzhed();
        zza = zzhedVar;
        zzgyx.cb(zzhed.class, zzhedVar);
    }

    public zzhed() {
        zzgxp zzgxpVar = zzgxp.zzb;
        this.zzf = zzgxpVar;
        this.zzg = zzgxpVar;
    }

    public static /* synthetic */ void a(zzhed zzhedVar, zzgxp zzgxpVar) {
        zzgxpVar.getClass();
        zzhedVar.zzc |= 4;
        zzhedVar.zzf = zzgxpVar;
    }

    public static /* synthetic */ void b(zzhed zzhedVar) {
        zzhedVar.zzd = 1;
        zzhedVar.zzc = 1 | zzhedVar.zzc;
    }

    public static /* synthetic */ void d(zzhed zzhedVar) {
        zzhedVar.zzc |= 2;
        zzhedVar.zze = "image/png";
    }

    public static zzheb zzc() {
        return (zzheb) zza.cl();
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
                return new cyk(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", eqd.f15983e, "zze", "zzf", "zzg"});
            case 3:
                return new zzhed();
            case 4:
                return new zzheb(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhed.class) {
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
