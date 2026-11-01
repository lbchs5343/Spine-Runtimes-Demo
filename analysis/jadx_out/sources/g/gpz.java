package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class gpz extends cys {
    private static final gpz zza;
    private boh zze;
    private boh zzf;
    private cwe zzg;
    private cwe zzh;

    static {
        gpz gpzVar = new gpz();
        zza = gpzVar;
        cys.af(gpz.class, gpzVar);
    }

    public gpz() {
        ajv ajvVar = ajv.f10348a;
        this.zze = ajvVar;
        this.zzf = ajvVar;
        hbs hbsVar = hbs.f19192a;
        this.zzg = hbsVar;
        this.zzh = hbsVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(gpz gpzVar, List list) {
        boh bohVar = gpzVar.zzf;
        if (!((gzj) bohVar).f19052f) {
            gpzVar.zzf = cys.ab(bohVar);
        }
        cir.y(list, gpzVar.zzf);
    }

    public static void c(gpz gpzVar) {
        gpzVar.zze = ajv.f10348a;
    }

    public static void d(gpz gpzVar, int i) {
        cwe cweVar = gpzVar.zzh;
        if (!((gzj) cweVar).f19052f) {
            gpzVar.zzh = cys.ac(cweVar);
        }
        gpzVar.zzh.remove(i);
    }

    public static void e(gpz gpzVar, ArrayList arrayList) {
        cwe cweVar = gpzVar.zzg;
        if (!((gzj) cweVar).f19052f) {
            gpzVar.zzg = cys.ac(cweVar);
        }
        cir.y(arrayList, gpzVar.zzg);
    }

    public static void f(gpz gpzVar, int i) {
        cwe cweVar = gpzVar.zzg;
        if (!((gzj) cweVar).f19052f) {
            gpzVar.zzg = cys.ac(cweVar);
        }
        gpzVar.zzg.remove(i);
    }

    public static void g(gpz gpzVar) {
        gpzVar.zzg = hbs.f19192a;
    }

    public static gxg h() {
        return (gxg) zza.ag();
    }

    public static void i(gpz gpzVar) {
        gpzVar.zzf = ajv.f10348a;
    }

    public static void j(gpz gpzVar) {
        gpzVar.zzh = hbs.f19192a;
    }

    public static void k(gpz gpzVar, Iterable iterable) {
        cwe cweVar = gpzVar.zzh;
        if (!((gzj) cweVar).f19052f) {
            gpzVar.zzh = cys.ac(cweVar);
        }
        cir.y(iterable, gpzVar.zzh);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void l(gpz gpzVar, Iterable iterable) {
        boh bohVar = gpzVar.zze;
        if (!((gzj) bohVar).f19052f) {
            gpzVar.zze = cys.ab(bohVar);
        }
        cir.y(iterable, gpzVar.zze);
    }

    public static gpz m() {
        return zza;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", bvd.class, "zzh", ezy.class});
        }
        if (i2 == 3) {
            return new gpz();
        }
        if (i2 == 4) {
            return new gxg(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final int n() {
        return ((ajv) this.zze).size();
    }

    public final int o() {
        return this.zzh.size();
    }

    public final int p() {
        return this.zzg.size();
    }

    public final List q() {
        return this.zzf;
    }

    public final cwe r() {
        return this.zzh;
    }

    public final List s() {
        return this.zze;
    }

    public final ezy t(int i) {
        return (ezy) this.zzh.get(i);
    }

    public final bvd u(int i) {
        return (bvd) this.zzg.get(i);
    }

    public final int v() {
        return ((ajv) this.zzf).size();
    }

    public final cwe w() {
        return this.zzg;
    }
}
