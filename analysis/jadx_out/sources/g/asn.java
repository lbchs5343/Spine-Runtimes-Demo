package g;

/* loaded from: classes.dex */
public abstract class asn {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10748a = 0;

    static {
        Object i;
        Object i2;
        Exception exc = new Exception();
        String simpleName = bfc.class.getSimpleName();
        StackTraceElement stackTraceElement = exc.getStackTrace()[0];
        new StackTraceElement("_COROUTINE.".concat(simpleName), "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
        try {
            i = bry.class.getCanonicalName();
        } catch (Throwable th) {
            i = eg.i(th);
        }
        if (sl.a(i) != null) {
            i = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            i2 = asn.class.getCanonicalName();
        } catch (Throwable th2) {
            i2 = eg.i(th2);
        }
        if (sl.a(i2) != null) {
            i2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }
}
