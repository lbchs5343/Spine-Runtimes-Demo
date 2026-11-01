package g;

/* loaded from: classes3.dex */
public final class exl extends fsu {
    private static final exl zzb;
    private int zzd;
    private int zzf;
    private gmb zze = amo.f10475b;
    private String zzg = "";

    static {
        exl exlVar = new exl();
        zzb = exlVar;
        fsu.p(exl.class, exlVar);
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002င\u0000\u0003ဈ\u0001", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new exl();
        }
        if (i2 == 4) {
            return new tx(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
