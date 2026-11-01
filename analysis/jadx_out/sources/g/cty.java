package g;

import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class cty extends TimeoutException {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13506a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ cty(String str, int i) {
        super(str);
        this.f13506a = i;
    }

    private final synchronized Throwable b() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    private final synchronized Throwable c() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        switch (this.f13506a) {
            case 0:
                b();
                break;
            default:
                c();
                break;
        }
        return this;
    }
}
