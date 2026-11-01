package g;

/* loaded from: classes3.dex */
public final class cbn {

    /* renamed from: a, reason: collision with root package name */
    public static cbn f12597a;

    /* renamed from: b, reason: collision with root package name */
    public static final fzo f12598b = new fzo(0, false, false, 0, 0);

    /* renamed from: c, reason: collision with root package name */
    public fzo f12599c;

    public static synchronized cbn d() {
        cbn cbnVar;
        synchronized (cbn.class) {
            try {
                if (f12597a == null) {
                    f12597a = new cbn();
                }
                cbnVar = f12597a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cbnVar;
    }
}
