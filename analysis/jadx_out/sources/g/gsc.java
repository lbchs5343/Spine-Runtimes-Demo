package g;

/* loaded from: classes3.dex */
public final class gsc extends fsu {
    private static final gsc zzb;
    private int zzd;
    private gmb zze = amo.f10475b;
    private String zzf = "";
    private boolean zzg;

    static {
        gsc gscVar = new gsc();
        zzb = gscVar;
        fsu.p(gsc.class, gscVar);
    }

    public static gsc a() {
        return zzb;
    }

    public static /* synthetic */ void b(gsc gscVar, boolean z) {
        gscVar.zzd |= 2;
        gscVar.zzg = z;
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဇ\u0001", new Object[]{"zzd", "zze", cmx.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new gsc();
        }
        if (i2 == 4) {
            return new dmu(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
