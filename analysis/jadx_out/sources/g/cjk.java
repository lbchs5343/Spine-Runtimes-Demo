package g;

/* loaded from: classes.dex */
public final class cjk implements bdp {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12985c;

    /* renamed from: b, reason: collision with root package name */
    public static final cjk f12984b = new cjk(0);

    /* renamed from: a, reason: collision with root package name */
    public static final cjk f12983a = new cjk(1);

    public /* synthetic */ cjk(int i) {
        this.f12985c = i;
    }

    private final void d(Object obj) {
    }

    @Override // g.bdp
    public final void _z(Object obj) {
        switch (this.f12985c) {
            case 0:
                throw new IllegalStateException("This continuation is already complete");
            default:
                return;
        }
    }

    @Override // g.bdp
    public final boj getContext() {
        switch (this.f12985c) {
            case 0:
                throw new IllegalStateException("This continuation is already complete");
            default:
                return cgq.f12850a;
        }
    }

    public String toString() {
        switch (this.f12985c) {
            case 0:
                return "This continuation is already complete";
            default:
                return super.toString();
        }
    }
}
