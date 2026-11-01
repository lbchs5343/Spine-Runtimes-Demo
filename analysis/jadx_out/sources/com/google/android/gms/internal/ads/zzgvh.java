package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;

@Deprecated
/* loaded from: classes3.dex */
public final class zzgvh extends zzgyx implements zzhaj {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvh zzb;
    private static volatile zzhaq zzc;
    private String zzd = "";
    private zzgzj zze = ahn.f10232c;

    static {
        zzgvh zzgvhVar = new zzgvh();
        zzb = zzgvhVar;
        zzgyx.cb(zzgvh.class, zzgvhVar);
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
                return new cyk(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", zzguh.class});
            case 3:
                return new zzgvh();
            case 4:
                return new zzgvf(zzb);
            case 5:
                return zzb;
            case 6:
                zzhaq zzhaqVar2 = zzc;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgvh.class) {
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
