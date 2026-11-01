package g;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dfz {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f14111a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f14112b;

    /* renamed from: c, reason: collision with root package name */
    public static final Class f14113c;

    /* renamed from: d, reason: collision with root package name */
    public static final Method f14114d;

    /* renamed from: e, reason: collision with root package name */
    public static final Field f14115e;

    /* renamed from: f, reason: collision with root package name */
    public static final Field f14116f;

    /* renamed from: g, reason: collision with root package name */
    public static final Handler f14117g = new Handler(Looper.getMainLooper());

    /* JADX WARN: Can't wrap try/catch for region: R(23:0|1|2|3|4|5|6|7|8|9|10|(12:33|34|13|(6:29|30|16|(3:24|25|26)|20|21)|15|16|(1:18)|24|25|26|20|21)|12|13|(0)|15|16|(0)|24|25|26|20|21) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        Class<?> cls;
        Field field;
        Field field2;
        Method declaredMethod;
        Class cls2;
        Method declaredMethod2;
        Class cls3;
        int i;
        Method method = null;
        try {
            cls = Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            cls = null;
        }
        f14113c = cls;
        try {
            field = Activity.class.getDeclaredField("mMainThread");
            field.setAccessible(true);
        } catch (Throwable unused2) {
            field = null;
        }
        f14115e = field;
        try {
            field2 = Activity.class.getDeclaredField("mToken");
            field2.setAccessible(true);
        } catch (Throwable unused3) {
            field2 = null;
        }
        f14116f = field2;
        Class cls4 = f14113c;
        Class<?> cls5 = Boolean.TYPE;
        if (cls4 != null) {
            try {
                declaredMethod = cls4.getDeclaredMethod("performStopActivity", IBinder.class, cls5, String.class);
                declaredMethod.setAccessible(true);
            } catch (Throwable unused4) {
            }
            f14111a = declaredMethod;
            cls2 = f14113c;
            if (cls2 != null) {
                try {
                    declaredMethod2 = cls2.getDeclaredMethod("performStopActivity", IBinder.class, cls5);
                    declaredMethod2.setAccessible(true);
                } catch (Throwable unused5) {
                }
                f14112b = declaredMethod2;
                cls3 = f14113c;
                i = Build.VERSION.SDK_INT;
                if ((i != 26 || i == 27) && cls3 != null) {
                    Method declaredMethod3 = cls3.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls5, Configuration.class, Configuration.class, cls5, cls5);
                    declaredMethod3.setAccessible(true);
                    method = declaredMethod3;
                }
                f14114d = method;
            }
            declaredMethod2 = null;
            f14112b = declaredMethod2;
            cls3 = f14113c;
            i = Build.VERSION.SDK_INT;
            if (i != 26) {
            }
            Method declaredMethod32 = cls3.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls5, Configuration.class, Configuration.class, cls5, cls5);
            declaredMethod32.setAccessible(true);
            method = declaredMethod32;
            f14114d = method;
        }
        declaredMethod = null;
        f14111a = declaredMethod;
        cls2 = f14113c;
        if (cls2 != null) {
        }
        declaredMethod2 = null;
        f14112b = declaredMethod2;
        cls3 = f14113c;
        i = Build.VERSION.SDK_INT;
        if (i != 26) {
        }
        Method declaredMethod322 = cls3.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls5, Configuration.class, Configuration.class, cls5, cls5);
        declaredMethod322.setAccessible(true);
        method = declaredMethod322;
        f14114d = method;
    }
}
