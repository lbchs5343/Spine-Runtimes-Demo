package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzarp extends zzgyx implements zzhaj {
    private static final zzarp zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private long zze;
    private long zzi;
    private long zzj;
    private long zzl;
    private int zzp;
    private String zzd = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzk = "";
    private String zzm = "";
    private String zzn = "";
    private zzgzj zzo = ahn.f10232c;

    static {
        zzarp zzarpVar = new zzarp();
        zza = zzarpVar;
        zzgyx.cb(zzarp.class, zzarpVar);
    }

    public static /* synthetic */ void a(zzarp zzarpVar, String str) {
        str.getClass();
        zzarpVar.zzc |= 1;
        zzarpVar.zzd = str;
    }

    public static /* synthetic */ void b(zzarp zzarpVar, long j) {
        zzarpVar.zzc |= 2;
        zzarpVar.zze = j;
    }

    public static /* synthetic */ void d(zzarp zzarpVar, int i) {
        zzarpVar.zzp = i - 1;
        zzarpVar.zzc |= 2048;
    }

    public static /* synthetic */ void e(zzarp zzarpVar, String str) {
        str.getClass();
        zzarpVar.zzc |= 4;
        zzarpVar.zzf = str;
    }

    public static /* synthetic */ void f(zzarp zzarpVar, String str) {
        str.getClass();
        zzarpVar.zzc |= 8;
        zzarpVar.zzg = str;
    }

    public static /* synthetic */ void g(zzarp zzarpVar, String str) {
        zzarpVar.zzc |= 1024;
        zzarpVar.zzn = str;
    }

    public static /* synthetic */ void h(zzarp zzarpVar, String str) {
        zzarpVar.zzc |= 16;
        zzarpVar.zzh = str;
    }

    public static zzarl zza() {
        return (zzarl) zza.cl();
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
                return new cyk(zza, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\r᠌\u000b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zzarn.class, "zzp", eqd.z});
            case 3:
                return new zzarp();
            case 4:
                return new zzarl(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzarp.class) {
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
