package g;

/* loaded from: classes3.dex */
public final class aho extends fsu {
    private static final aho zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private int zzi;
    private String zzf = "";
    private String zzh = "";

    static {
        aho ahoVar = new aho();
        zzb = ahoVar;
        fsu.p(aho.class, ahoVar);
    }

    public static /* synthetic */ void a(aho ahoVar, String str) {
        str.getClass();
        ahoVar.zzd |= 2;
        ahoVar.zzf = str;
    }

    public static /* synthetic */ void b(aho ahoVar, String str) {
        ahoVar.zzd |= 8;
        ahoVar.zzh = str;
    }

    public static gwg c() {
        return (gwg) zzb.u();
    }

    public static /* synthetic */ void d(aho ahoVar, int i) {
        ahoVar.zzd |= 16;
        ahoVar.zzi = i;
    }

    public static /* synthetic */ void e(aho ahoVar, hm hmVar) {
        ahoVar.zzg = hmVar.zza();
        ahoVar.zzd |= 4;
    }

    public static /* synthetic */ void f(aho ahoVar, int i) {
        ahoVar.zzd |= 1;
        ahoVar.zze = i;
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003\u0007င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", gve.f18803b, "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new aho();
        }
        if (i2 == 4) {
            return new gwg(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
