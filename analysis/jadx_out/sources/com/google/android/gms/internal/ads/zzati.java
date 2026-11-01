package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzati extends zzgyx implements zzhaj {
    private static final zzati zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private long zzf;
    private long zzh;
    private String zzd = "";
    private String zze = "";
    private String zzg = "D";

    static {
        zzati zzatiVar = new zzati();
        zza = zzatiVar;
        zzgyx.cb(zzati.class, zzatiVar);
    }

    public static /* synthetic */ void a(zzati zzatiVar) {
        zzatiVar.zzc |= 1;
        zzatiVar.zzd = "1.671910402";
    }

    public static /* synthetic */ void b(zzati zzatiVar, long j) {
        zzatiVar.zzc |= 16;
        zzatiVar.zzh = j;
    }

    public static /* synthetic */ void d(zzati zzatiVar, long j) {
        zzatiVar.zzc |= 4;
        zzatiVar.zzf = j;
    }

    public static /* synthetic */ void e(zzati zzatiVar, String str) {
        str.getClass();
        zzatiVar.zzc |= 8;
        zzatiVar.zzg = str;
    }

    public static /* synthetic */ void f(zzati zzatiVar, String str) {
        str.getClass();
        zzatiVar.zzc |= 2;
        zzatiVar.zze = str;
    }

    public static zzath zza() {
        return (zzath) zza.cl();
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
                return new cyk(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဈ\u0003\u0005ဂ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 3:
                return new zzati();
            case 4:
                return new zzath(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzati.class) {
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
