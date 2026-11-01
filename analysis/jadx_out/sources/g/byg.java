package g;

/* loaded from: classes.dex */
public final class byg extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final transient boj f12441a;

    public byg(boj bojVar) {
        this.f12441a = bojVar;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f12441a.toString();
    }
}
