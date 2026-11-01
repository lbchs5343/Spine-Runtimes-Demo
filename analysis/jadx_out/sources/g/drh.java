package g;

/* loaded from: classes3.dex */
public final class drh extends cys {
    private static final drh zza;
    private int zze;
    private String zzf = "";
    private long zzg;

    static {
        drh drhVar = new drh();
        zza = drhVar;
        cys.af(drh.class, drhVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new drh();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }
}
