package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;
import g.uo;

/* loaded from: classes3.dex */
public final class zzhew extends zzgyx implements zzhaj {
    private static final zzhew zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private int zzg;
    private String zze = "";
    private zzgzf zzf = uo.f20109c;
    private zzgzj zzh = ahn.f10232c;
    private zzgxp zzi = zzgxp.zzb;

    static {
        zzhew zzhewVar = new zzhew();
        zza = zzhewVar;
        zzgyx.cb(zzhew.class, zzhewVar);
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
                return new cyk(zza, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u0016\u0005င\u0002\u0006\u001b\u0007ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", zzheu.class, "zzi"});
            case 3:
                return new zzhew();
            case 4:
                return new zzhev(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhew.class) {
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
