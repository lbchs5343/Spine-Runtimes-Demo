package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;
import g.eqd;
import g.uo;

/* loaded from: classes3.dex */
public final class zzhei extends zzgyx implements zzhaj {
    private static final zzhei zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private zzhdj zzf;
    private zzhdn zzg;
    private int zzh;
    private int zzk;
    private byte zzm = 2;
    private String zze = "";
    private zzgzf zzi = uo.f20109c;
    private String zzj = "";
    private zzgzj zzl = ahn.f10232c;

    static {
        zzhei zzheiVar = new zzhei();
        zza = zzheiVar;
        zzgyx.cb(zzhei.class, zzheiVar);
    }

    public static /* synthetic */ void a(zzhei zzheiVar, String str) {
        str.getClass();
        zzgzj zzgzjVar = zzheiVar.zzl;
        if (!zzgzjVar.zzc()) {
            zzheiVar.zzl = zzgyx.bn(zzgzjVar);
        }
        zzheiVar.zzl.add(str);
    }

    public static /* synthetic */ void b(zzhei zzheiVar, int i) {
        zzheiVar.zzk = i - 1;
        zzheiVar.zzc |= 64;
    }

    public static /* synthetic */ void d(zzhei zzheiVar, String str) {
        str.getClass();
        zzheiVar.zzc |= 2;
        zzheiVar.zze = str;
    }

    public static /* synthetic */ void e(zzhei zzheiVar, zzhdj zzhdjVar) {
        zzhdjVar.getClass();
        zzheiVar.zzf = zzhdjVar;
        zzheiVar.zzc |= 4;
    }

    public static /* synthetic */ void f(zzhei zzheiVar, int i) {
        zzheiVar.zzc |= 1;
        zzheiVar.zzd = i;
    }

    public static zzheh zzd() {
        return (zzheh) zza.cl();
    }

    @Override // com.google.android.gms.internal.ads.zzgyx
    public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
        zzhaq zzhaqVar;
        switch (zzgywVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzm);
            case 1:
                this.zzm = zzgyxVar == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new cyk(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", eqd.x, "zzl"});
            case 3:
                return new zzhei();
            case 4:
                return new zzheh(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhei.class) {
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

    public final int zzc() {
        return this.zzl.size();
    }

    public final String zzg() {
        return this.zze;
    }
}
