package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzase extends zzgyx implements zzhaj {
    public static final /* synthetic */ int zza = 0;
    private static final zzase zzb;
    private static volatile zzhaq zzc;
    private int zzd;
    private boolean zzf;
    private boolean zzg;
    private long zze = 100;
    private long zzh = 300;

    static {
        zzase zzaseVar = new zzase();
        zzb = zzaseVar;
        zzgyx.cb(zzase.class, zzaseVar);
    }

    public static zzase zzb() {
        return zzb;
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
                return new cyk(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
            case 3:
                return new zzase();
            case 4:
                return new zzasc(zzb);
            case 5:
                return zzb;
            case 6:
                zzhaq zzhaqVar2 = zzc;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzase.class) {
                    try {
                        zzhaqVar = zzc;
                        if (zzhaqVar == null) {
                            zzhaqVar = new zzgys(zzb);
                            zzc = zzhaqVar;
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
