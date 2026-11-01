package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class cgl {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f12845a = 0;

    static {
        int i = amw._cq;
    }

    public static String b(Exception exc) {
        if (exc == null) {
            return null;
        }
        try {
            String simpleName = exc.getClass().getSimpleName();
            String message = exc.getMessage();
            if (message == null) {
                message = "";
            }
            String str = simpleName + ":" + message;
            int i = gbs.f17875a;
            return str.length() > 40 ? str.substring(0, 40) : str;
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
            return null;
        }
    }

    public static hd c(hm hmVar, int i, ejd ejdVar, String str, apl aplVar) {
        try {
            gwg c2 = aho.c();
            int i2 = ejdVar.f15636a;
            c2.f();
            aho.f((aho) c2.f14803d, i2);
            String str2 = ejdVar.f15638c;
            c2.f();
            aho.a((aho) c2.f14803d, str2);
            int i3 = ejdVar.f15637b;
            if (i3 != 0) {
                c2.f();
                aho.d((aho) c2.f14803d, i3);
            }
            if (hmVar != null) {
                c2.f();
                aho.e((aho) c2.f14803d, hmVar);
            }
            if (str != null) {
                c2.f();
                aho.b((aho) c2.f14803d, str);
            }
            ari b2 = hd.b();
            b2.a(c2);
            b2.f();
            hd.f((hd) b2.f14803d, i);
            if (!aplVar.equals(apl.BROADCAST_ACTION_UNSPECIFIED)) {
                b2.f();
                hd.d((hd) b2.f14803d, aplVar);
            }
            return (hd) b2.g();
        } catch (Throwable unused) {
            int i4 = gbs.f17875a;
            return null;
        }
    }

    public static eag d(int i, apl aplVar) {
        try {
            gza b2 = eag.b();
            b2.f();
            eag.e((eag) b2.f14803d, i);
            if (!aplVar.equals(apl.BROADCAST_ACTION_UNSPECIFIED)) {
                b2.f();
                eag.a((eag) b2.f14803d, aplVar);
            }
            return (eag) b2.g();
        } catch (Exception unused) {
            int i2 = gbs.f17875a;
            return null;
        }
    }
}
