package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzate extends zzgyx implements zzhaj {
    private static final zzate zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgxp zzd;
    private zzgxp zze;
    private zzgxp zzf;
    private zzgxp zzg;

    static {
        zzate zzateVar = new zzate();
        zza = zzateVar;
        zzgyx.cb(zzate.class, zzateVar);
    }

    public zzate() {
        zzgxp zzgxpVar = zzgxp.zzb;
        this.zzd = zzgxpVar;
        this.zze = zzgxpVar;
        this.zzf = zzgxpVar;
        this.zzg = zzgxpVar;
    }

    public static /* synthetic */ void a(zzate zzateVar, zzgxp zzgxpVar) {
        zzateVar.zzc |= 1;
        zzateVar.zzd = zzgxpVar;
    }

    public static /* synthetic */ void b(zzate zzateVar, zzgxp zzgxpVar) {
        zzateVar.zzc |= 4;
        zzateVar.zzf = zzgxpVar;
    }

    public static /* synthetic */ void d(zzate zzateVar, zzgxp zzgxpVar) {
        zzateVar.zzc |= 8;
        zzateVar.zzg = zzgxpVar;
    }

    public static /* synthetic */ void e(zzate zzateVar, zzgxp zzgxpVar) {
        zzateVar.zzc |= 2;
        zzateVar.zze = zzgxpVar;
    }

    public static zzatd zza() {
        return (zzatd) zza.cl();
    }

    public static zzate zzc(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
        return (zzate) zzgyx.bp(zza, bArr, zzgyhVar);
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
                return new cyk(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
            case 3:
                return new zzate();
            case 4:
                return new zzatd(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzate.class) {
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

    public final zzgxp zzd() {
        return this.zzd;
    }

    public final zzgxp zzf() {
        return this.zze;
    }

    public final zzgxp zzg() {
        return this.zzg;
    }

    public final zzgxp zzh() {
        return this.zzf;
    }
}
