package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzguk extends zzgyx implements zzhaj {
    private static final zzguk zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgua zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzguk zzgukVar = new zzguk();
        zza = zzgukVar;
        zzgyx.cb(zzguk.class, zzgukVar);
    }

    public static /* synthetic */ void a(zzguk zzgukVar, zzgua zzguaVar) {
        zzguaVar.getClass();
        zzgukVar.zzd = zzguaVar;
        zzgukVar.zzc |= 1;
    }

    public static zzguj zzc() {
        return (zzguj) zza.cl();
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
                return new cyk(zza, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
            case 3:
                return new zzguk();
            case 4:
                return new zzguj(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzguk.class) {
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

    public final int zza() {
        return this.zzf;
    }

    public final zzgua zzb() {
        zzgua zzguaVar = this.zzd;
        return zzguaVar == null ? zzgua.zzd() : zzguaVar;
    }

    public final zzgve zzf() {
        zzgve zzb2 = zzgve.zzb(this.zzg);
        return zzb2 == null ? zzgve.UNRECOGNIZED : zzb2;
    }

    public final boolean zzj() {
        return (this.zzc & 1) != 0;
    }

    public final int zzk() {
        int i = this.zze;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? 0 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
