package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzarj extends zzgyx implements zzhaj {
    private static final zzarj zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private boolean zzg;
    private zzasb zzi;
    private zzase zzj;
    private boolean zzk;
    private boolean zze = true;
    private String zzf = "unknown_host";
    private boolean zzh = true;

    static {
        zzarj zzarjVar = new zzarj();
        zza = zzarjVar;
        zzgyx.cb(zzarj.class, zzarjVar);
    }

    public static /* synthetic */ void a(zzarj zzarjVar, boolean z) {
        zzarjVar.zzc |= 8;
        zzarjVar.zzg = z;
    }

    public static /* synthetic */ void b(zzarj zzarjVar, String str) {
        str.getClass();
        zzarjVar.zzc |= 4;
        zzarjVar.zzf = str;
    }

    public static zzarh zza() {
        return (zzarh) zza.cl();
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
                return new cyk(zza, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", eqd.u, "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 3:
                return new zzarj();
            case 4:
                return new zzarh(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzarj.class) {
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

    public final zzasb zzc() {
        zzasb zzasbVar = this.zzi;
        return zzasbVar == null ? zzasb.zzc() : zzasbVar;
    }

    public final zzase zzd() {
        zzase zzaseVar = this.zzj;
        return zzaseVar == null ? zzase.zzb() : zzaseVar;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final boolean zzi() {
        return this.zzg;
    }
}
