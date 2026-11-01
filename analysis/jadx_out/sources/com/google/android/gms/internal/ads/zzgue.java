package com.google.android.gms.internal.ads;

import g.cyk;

/* loaded from: classes3.dex */
public final class zzgue extends zzgyx implements zzhaj {
    private static final zzgue zza;
    private static volatile zzhaq zzb;
    private String zzc = "";
    private zzgxp zzd = zzgxp.zzb;
    private int zze;

    static {
        zzgue zzgueVar = new zzgue();
        zza = zzgueVar;
        zzgyx.cb(zzgue.class, zzgueVar);
    }

    public static /* synthetic */ void b(zzgue zzgueVar, zzgxp zzgxpVar) {
        zzgxpVar.getClass();
        zzgueVar.zzd = zzgxpVar;
    }

    public static /* synthetic */ void d(zzgue zzgueVar, String str) {
        str.getClass();
        zzgueVar.zzc = str;
    }

    public static zzguc zza() {
        return (zzguc) zza.cl();
    }

    public static zzguc zzb(zzgue zzgueVar) {
        return (zzguc) zza.ci(zzgueVar);
    }

    public static zzgue zzd() {
        return zza;
    }

    public static zzgue zzf(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
        return (zzgue) zzgyx.bp(zza, bArr, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new zzgue();
            case 4:
                return new zzguc(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgue.class) {
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

    public final zzgve zzg() {
        zzgve zzb2 = zzgve.zzb(this.zze);
        return zzb2 == null ? zzgve.UNRECOGNIZED : zzb2;
    }

    public final zzgxp zzh() {
        return this.zzd;
    }

    public final String zzi() {
        return this.zzc;
    }
}
