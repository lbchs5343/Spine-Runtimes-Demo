package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzhdf extends zzgyx implements zzhaj {
    private static final zzhdf zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgxp zzd;
    private zzgxp zze;
    private byte zzf = 2;

    static {
        zzhdf zzhdfVar = new zzhdf();
        zza = zzhdfVar;
        zzgyx.cb(zzhdf.class, zzhdfVar);
    }

    public zzhdf() {
        zzgxp zzgxpVar = zzgxp.zzb;
        this.zzd = zzgxpVar;
        this.zze = zzgxpVar;
    }

    public static /* synthetic */ void a(zzhdf zzhdfVar, zzgxp zzgxpVar) {
        zzhdfVar.zzc |= 1;
        zzhdfVar.zzd = zzgxpVar;
    }

    public static /* synthetic */ void b(zzhdf zzhdfVar, zzgxp zzgxpVar) {
        zzhdfVar.zzc |= 2;
        zzhdfVar.zze = zzgxpVar;
    }

    public static zzhde zzc() {
        return (zzhde) zza.cl();
    }

    @Override // com.google.android.gms.internal.ads.zzgyx
    public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
        zzhaq zzhaqVar;
        switch (zzgywVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzf);
            case 1:
                this.zzf = zzgyxVar == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new cyk(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzhdf();
            case 4:
                return new zzhde(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhdf.class) {
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
