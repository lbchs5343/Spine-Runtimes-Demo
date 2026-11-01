package com.google.android.gms.internal.ads;

import g.ahn;
import g.cyk;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzgum extends zzgyx implements zzhaj {
    private static final zzgum zza;
    private static volatile zzhaq zzb;
    private int zzc;
    private zzgzj zzd = ahn.f10232c;

    static {
        zzgum zzgumVar = new zzgum();
        zza = zzgumVar;
        zzgyx.cb(zzgum.class, zzgumVar);
    }

    public static /* synthetic */ void a(zzgum zzgumVar, zzguk zzgukVar) {
        zzgukVar.getClass();
        zzgzj zzgzjVar = zzgumVar.zzd;
        if (!zzgzjVar.zzc()) {
            zzgumVar.zzd = zzgyx.bn(zzgzjVar);
        }
        zzgumVar.zzd.add(zzgukVar);
    }

    public static zzgui zzc() {
        return (zzgui) zza.cl();
    }

    public static zzgum zzg(InputStream inputStream, zzgyh zzgyhVar) throws IOException {
        return (zzgum) zzgyx.bw(zza, inputStream, zzgyhVar);
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
                return new cyk(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", zzguk.class});
            case 3:
                return new zzgum();
            case 4:
                return new zzgui(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzgum.class) {
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
        return this.zzd.size();
    }

    public final int zzb() {
        return this.zzc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzguk zzd(int i) {
        return (zzguk) this.zzd.get(i);
    }

    public final List zzh() {
        return this.zzd;
    }
}
