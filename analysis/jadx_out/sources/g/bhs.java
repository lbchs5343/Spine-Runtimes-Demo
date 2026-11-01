package g;

/* loaded from: classes3.dex */
public final class bhs extends fsu {
    private static final bhs zzb;
    private int zzd;
    private String zze = "";

    static {
        bhs bhsVar = new bhs();
        zzb = bhsVar;
        fsu.p(bhs.class, bhsVar);
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new bhs();
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
