package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;

/* loaded from: classes3.dex */
public final class zzhdj extends zzgyx implements zzhaj {
    private static final zzhdj zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzhdi zzd;
    private zzgxp zzf;
    private zzgxp zzg;
    private int zzh;
    private byte zzi = 2;
    private zzgzj zze = ahn.f10232c;

    static {
        zzhdj zzhdjVar = new zzhdj();
        zza = zzhdjVar;
        zzgyx.cb(zzhdj.class, zzhdjVar);
    }

    public zzhdj() {
        zzgxp zzgxpVar = zzgxp.zzb;
        this.zzf = zzgxpVar;
        this.zzg = zzgxpVar;
    }

    public static /* synthetic */ void a(zzhdj zzhdjVar, zzhdf zzhdfVar) {
        zzhdfVar.getClass();
        zzgzj zzgzjVar = zzhdjVar.zze;
        if (!zzgzjVar.zzc()) {
            zzhdjVar.zze = zzgyx.bn(zzgzjVar);
        }
        zzhdjVar.zze.add(zzhdfVar);
    }

    public static zzhdg zzc() {
        return (zzhdg) zza.cl();
    }

    @Override // com.google.android.gms.internal.ads.zzgyx
    public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
        zzhaq zzhaqVar;
        switch (zzgywVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzi);
            case 1:
                this.zzi = zzgyxVar == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new cyk(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", "zze", zzhdf.class, "zzf", "zzg", "zzh"});
            case 3:
                return new zzhdj();
            case 4:
                return new zzhdg(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhdj.class) {
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
