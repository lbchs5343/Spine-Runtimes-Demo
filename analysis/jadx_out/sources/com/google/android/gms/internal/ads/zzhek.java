package com.google.android.gms.internal.ads;

import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzhek extends zzgyx implements zzhaj {
    private static final zzhek zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private long zze;
    private boolean zzf;
    private int zzg;
    private boolean zzj;
    private boolean zzk;
    private String zzd = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzhek zzhekVar = new zzhek();
        zza = zzhekVar;
        zzgyx.cb(zzhek.class, zzhekVar);
    }

    public static /* synthetic */ void a(zzhek zzhekVar, String str) {
        zzhekVar.zzc |= 1;
        zzhekVar.zzd = str;
    }

    public static /* synthetic */ void b(zzhek zzhekVar, boolean z) {
        zzhekVar.zzc |= 4;
        zzhekVar.zzf = z;
    }

    public static /* synthetic */ void d(zzhek zzhekVar, long j) {
        zzhekVar.zzc |= 2;
        zzhekVar.zze = j;
    }

    public static zzhej zzc() {
        return (zzhej) zza.cl();
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
                return new cyk(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", eqd.h, "zzh", "zzi", "zzj", "zzk"});
            case 3:
                return new zzhek();
            case 4:
                return new zzhej(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhek.class) {
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
