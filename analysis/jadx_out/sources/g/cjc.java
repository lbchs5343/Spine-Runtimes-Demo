package g;

/* loaded from: classes.dex */
public final class cjc extends RuntimeException {
    private final geu callbackName;
    private final Throwable cause;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cjc(geu geuVar, Throwable th) {
        super(th);
        bff.p(geuVar, "callbackName");
        this.callbackName = geuVar;
        this.cause = th;
    }

    public final geu a() {
        return this.callbackName;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.cause;
    }
}
