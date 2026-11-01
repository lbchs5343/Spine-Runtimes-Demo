package g;

/* loaded from: classes3.dex */
public final class qt extends fsu {
    private static final qt zzb;
    private int zzd;
    private bhs zze;
    private bhs zzf;
    private int zzg;

    static {
        qt qtVar = new qt();
        zzb = qtVar;
        fsu.p(qt.class, qtVar);
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", gve.f18807f});
        }
        if (i2 == 3) {
            return new qt();
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
