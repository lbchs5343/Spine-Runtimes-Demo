package g;

import java.util.List;

/* loaded from: classes3.dex */
public final class ezy extends cys {
    private static final ezy zza;
    private int zze;
    private int zzf;
    private boh zzg = ajv.f10348a;

    static {
        ezy ezyVar = new ezy();
        zza = ezyVar;
        cys.af(ezy.class, ezyVar);
    }

    public static bds b() {
        return (bds) zza.ag();
    }

    public static /* synthetic */ void c(ezy ezyVar, int i) {
        ezyVar.zze |= 1;
        ezyVar.zzf = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(ezy ezyVar, List list) {
        boh bohVar = ezyVar.zzg;
        if (!((gzj) bohVar).f19052f) {
            ezyVar.zzg = cys.ab(bohVar);
        }
        cir.y(list, ezyVar.zzg);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new ezy();
        }
        if (i2 == 4) {
            return new bds(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final long e(int i) {
        ajv ajvVar = (ajv) this.zzg;
        ajvVar.zzi(i);
        return ajvVar.f10350c[i];
    }

    public final int f() {
        return ((ajv) this.zzg).size();
    }

    public final boolean g() {
        return (this.zze & 1) != 0;
    }

    public final List h() {
        return this.zzg;
    }

    public final int i() {
        return this.zzf;
    }
}
