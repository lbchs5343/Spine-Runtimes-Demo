package g;

/* loaded from: classes.dex */
public final class bxj extends Throwable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12381a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bxj(String str, int i) {
        super(str);
        this.f12381a = i;
    }

    private final synchronized Throwable b() {
        return this;
    }

    private final synchronized Throwable c() {
        return this;
    }

    private final synchronized Throwable d() {
        return this;
    }

    private final synchronized Throwable e() {
        return this;
    }

    private final synchronized Throwable f() {
        return this;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        switch (this.f12381a) {
            case 0:
                d();
                break;
            case 1:
                e();
                break;
            case 2:
                f();
                break;
            case 3:
                b();
                break;
            default:
                c();
                break;
        }
        return this;
    }
}
