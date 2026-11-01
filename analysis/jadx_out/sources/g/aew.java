package g;

/* loaded from: classes.dex */
public final class aew extends bmc implements cak {

    /* renamed from: c, reason: collision with root package name */
    public bvi f10124c;

    /* renamed from: d, reason: collision with root package name */
    public final dwg f10125d;

    /* renamed from: e, reason: collision with root package name */
    public String f10126e = "";

    /* renamed from: f, reason: collision with root package name */
    public gyo f10127f;

    /* renamed from: b, reason: collision with root package name */
    public static final dba f10123b = dsr.k(aew.class);

    /* renamed from: a, reason: collision with root package name */
    public static final azy f10122a = new azy("stub", "stub", -1, "stub", "");

    public aew(dwg dwgVar) {
        this.f10125d = dwgVar;
    }

    public static String g(int i, gdu gduVar) {
        long j = gduVar.f17955f;
        StringBuilder sb = new StringBuilder(16);
        for (int i2 = 0; i2 < i; i2++) {
            short j2 = (short) gduVar.j();
            if (j2 == 0) {
                break;
            }
            sb.append((char) j2);
        }
        gduVar.l(j + i, "readScriptOrVariantChar");
        return sb.toString();
    }

    public static char[] h(byte b2, byte b3, char c2) {
        if (((b2 >> 7) & 1) != 1) {
            return new char[]{(char) b2, (char) b3};
        }
        return new char[]{(char) ((b3 & 31) + c2), (char) (((b3 & 224) >> 5) + ((b2 & 3) << 3) + c2), (char) (((b2 & 124) >> 2) + c2)};
    }

    public final aot i() {
        this.k.k(8, "value size");
        gdu gduVar = this.k;
        int j = gduVar.j();
        if (j == 0) {
            return new aot(this.k.j(), this.k.i(), 3);
        }
        gduVar.n(0, j, "value res0 not 0");
        throw null;
    }
}
