package g;

/* loaded from: classes.dex */
public abstract class pp {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f19822a = dsr.k(pp.class);

    public static String b(long j, cwx cwxVar, foj fojVar, boolean z, boolean z2) {
        if (cwxVar == null || !cwxVar.h()) {
            String l = Long.toString(j);
            if (!z || Math.abs(j) <= 100) {
                return l;
            }
            StringBuilder l2 = tn.l(l, "(0x");
            l2.append(Long.toHexString(j));
            if (cwxVar == null || cwxVar.o(bjt.FLOAT)) {
                l2.append(", float:");
                l2.append(Float.intBitsToFloat((int) j));
            }
            if (cwxVar == null || cwxVar.o(bjt.DOUBLE)) {
                l2.append(", double:");
                l2.append(Double.longBitsToDouble(j));
            }
            l2.append(')');
            return l2.toString();
        }
        switch (dsv.f14740a[cwxVar.f().ordinal()]) {
            case 1:
                return j == 0 ? "false" : "true";
            case 2:
                fojVar.getClass();
                return foj.f((char) j, z2);
            case 3:
                return fojVar.n(1, z2, j);
            case 4:
                if (fojVar.f17139b == csu.AUTO) {
                    short s = (short) j;
                    if (s == Short.MIN_VALUE) {
                        return "Short.MIN_VALUE";
                    }
                    if (s == Short.MAX_VALUE) {
                        return "Short.MAX_VALUE";
                    }
                }
                return fojVar.n(2, z2, j);
            case 5:
                if (fojVar.f17139b == csu.AUTO) {
                    int i = (int) j;
                    if (i == Integer.MIN_VALUE) {
                        return "Integer.MIN_VALUE";
                    }
                    if (i == Integer.MAX_VALUE) {
                        return "Integer.MAX_VALUE";
                    }
                }
                return fojVar.n(4, z2, j);
            case 6:
                return fojVar.p(j, z2);
            case 7:
                return foj.i(Float.intBitsToFloat((int) j));
            case 8:
                return foj.g(Double.longBitsToDouble(j));
            case 9:
            case 10:
                if (j == 0) {
                    return "null";
                }
                f19822a.t(Long.valueOf(j), "Wrong object literal: {} for type: {}", cwxVar);
                return Long.toString(j);
            default:
                throw new gck("Unknown type in literalToString: " + cwxVar);
        }
    }

    public static String c(cwx cwxVar) {
        bjt f2 = cwxVar.f();
        if (f2 == bjt.OBJECT) {
            return "L" + cwxVar.l().replace('.', '/') + ';';
        }
        if (f2 != bjt.ARRAY) {
            return f2.d();
        }
        return "[" + c(cwxVar.k());
    }
}
