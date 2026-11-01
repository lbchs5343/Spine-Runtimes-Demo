package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;
import g.eqd;
import g.uo;

/* loaded from: classes3.dex */
public final class zzhcr extends zzgyx implements zzhaj {
    private static final zzhcr zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private String zzf = "";
    private zzgzj zzg;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private String zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private zzgzj zzu;
    private boolean zzv;
    private long zzw;
    private zzgzf zzx;
    private boolean zzy;
    private zzgzf zzz;

    static {
        zzhcr zzhcrVar = new zzhcr();
        zza = zzhcrVar;
        zzgyx.cb(zzhcr.class, zzhcrVar);
    }

    public zzhcr() {
        ahn ahnVar = ahn.f10232c;
        this.zzg = ahnVar;
        this.zzl = "";
        this.zzu = ahnVar;
        uo uoVar = uo.f20109c;
        this.zzx = uoVar;
        this.zzz = uoVar;
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
                return new cyk(zza, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005᠌\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006\tဈ\u0007\nင\b\u000bင\t\fင\n\rဇ\u000b\u000e\u001b\u000fဇ\f\u0010ဂ\r\u0011ࠬ\u0012ဇ\u000e\u0013ࠬ", new Object[]{"zzc", "zzd", eqd.ac, "zze", "zzf", "zzg", "zzh", eqd.r, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", zzhcn.class, "zzv", "zzw", "zzx", zzhce.zza(), "zzy", "zzz", eqd.w});
            case 3:
                return new zzhcr();
            case 4:
                return new zzhck(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhcr.class) {
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
