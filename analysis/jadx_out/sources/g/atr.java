package g;

/* loaded from: classes3.dex */
public final class atr extends cys {
    private static final atr zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private gxy zzh;

    static {
        atr atrVar = new atr();
        zza = atrVar;
        cys.af(atr.class, atrVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new atr();
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
