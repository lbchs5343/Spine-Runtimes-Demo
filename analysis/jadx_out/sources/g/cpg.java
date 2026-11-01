package g;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class cpg {

    /* renamed from: a, reason: collision with root package name */
    public static final long f13268a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f13269b;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                f13268a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                f13269b = Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean c() {
        if (Build.VERSION.SDK_INT >= 29) {
            return agl.i();
        }
        try {
            return ((Boolean) f13269b.invoke(null, Long.valueOf(f13268a))).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
