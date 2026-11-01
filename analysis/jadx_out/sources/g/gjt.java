package g;

/* loaded from: classes3.dex */
public final class gjt extends cys {
    private static final gjt zza;
    private cwe zze = hbs.f19192a;

    static {
        gjt gjtVar = new gjt();
        zza = gjtVar;
        cys.af(gjt.class, gjtVar);
    }

    public static gjt b() {
        return zza;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", evv.class});
        }
        if (i2 == 3) {
            return new gjt();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final cwe c() {
        return this.zze;
    }

    public final int d() {
        return this.zze.size();
    }
}
