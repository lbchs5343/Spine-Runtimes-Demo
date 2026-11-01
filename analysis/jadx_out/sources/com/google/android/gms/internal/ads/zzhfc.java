package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;
import g.hbe;

/* loaded from: classes3.dex */
public final class zzhfc extends zzgyx implements zzhaj {
    private static final zzhfc zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private int zzf = 4;
    private zzgzj zzg;
    private String zzh;
    private String zzi;
    private boolean zzj;
    private double zzk;
    private zzgzj zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzu;

    static {
        zzhfc zzhfcVar = new zzhfc();
        zza = zzhfcVar;
        zzgyx.cb(zzhfc.class, zzhfcVar);
    }

    public zzhfc() {
        ahn ahnVar = ahn.f10232c;
        this.zzg = ahnVar;
        this.zzh = "";
        this.zzi = "";
        this.zzl = ahnVar;
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
                return new cyk(zza, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0002\u0003\u001a\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007က\u0006\b\u001b\tဈ\u0001\n᠌\u0007\u000bဇ\b\fဇ\t\rဇ\n\u000eဇ\u000b", new Object[]{"zzc", "zzd", "zzf", hbe.f19161a, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzhfa.class, "zze", "zzm", hbe.f19162b, "zzn", "zzo", "zzp", "zzu"});
            case 3:
                return new zzhfc();
            case 4:
                return new zzhex(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhfc.class) {
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
