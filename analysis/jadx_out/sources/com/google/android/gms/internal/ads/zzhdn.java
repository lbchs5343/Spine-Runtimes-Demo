package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;

/* loaded from: classes3.dex */
public final class zzhdn extends zzgyx implements zzhaj {
    private static final zzhdn zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzhdm zzd;
    private zzgxp zzf;
    private zzgxp zzg;
    private int zzh;
    private zzgxp zzi;
    private byte zzj = 2;
    private zzgzj zze = ahn.f10232c;

    static {
        zzhdn zzhdnVar = new zzhdn();
        zza = zzhdnVar;
        zzgyx.cb(zzhdn.class, zzhdnVar);
    }

    public zzhdn() {
        zzgxp zzgxpVar = zzgxp.zzb;
        this.zzf = zzgxpVar;
        this.zzg = zzgxpVar;
        this.zzi = zzgxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyx
    public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
        zzhaq zzhaqVar;
        switch (zzgywVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzj);
            case 1:
                this.zzj = zzgyxVar == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new cyk(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzc", "zzd", "zze", zzhdf.class, "zzf", "zzg", "zzh", "zzi"});
            case 3:
                return new zzhdn();
            case 4:
                return new zzhdk(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhdn.class) {
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
