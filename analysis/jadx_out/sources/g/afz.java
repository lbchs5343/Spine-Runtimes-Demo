package g;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class afz {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f10165a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final Method f10166b;

    static {
        new HashMap();
        try {
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            e = e2;
        }
        try {
            f10166b = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
        } catch (NoSuchMethodException e3) {
            e = e3;
            Log.getStackTraceString(e);
        }
    }
}
