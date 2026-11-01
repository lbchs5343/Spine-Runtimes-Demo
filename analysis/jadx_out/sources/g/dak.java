package g;

/* loaded from: classes3.dex */
public final class dak implements ffh {

    /* renamed from: a, reason: collision with root package name */
    public static final dak f13856a = new dak(0);

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13857b;

    public /* synthetic */ dak(int i) {
        this.f13857b = i;
    }

    @Override // g.ffh
    public final eqc c(Class cls) {
        switch (this.f13857b) {
            case 0:
                if (!cys.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
                }
                try {
                    return (eqc) cys.ae(cls.asSubclass(cys.class)).a(3);
                } catch (Exception e2) {
                    throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e2);
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }

    @Override // g.ffh
    public final boolean d(Class cls) {
        switch (this.f13857b) {
            case 0:
                return cys.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }
}
