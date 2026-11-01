package g;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class dyy {

    /* renamed from: a, reason: collision with root package name */
    public static String f15108a;

    /* renamed from: e, reason: collision with root package name */
    public static fyr f15112e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f15113f;

    /* renamed from: g, reason: collision with root package name */
    public final NotificationManager f15114g;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f15111d = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static HashSet f15109b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public static final Object f15110c = new Object();

    public dyy(Context context) {
        this.f15113f = context;
        this.f15114g = (NotificationManager) context.getSystemService("notification");
    }

    public final boolean h() {
        Method method;
        Integer num;
        if (Build.VERSION.SDK_INT >= 24) {
            return cml.d(this.f15114g);
        }
        Context context = this.f15113f;
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
            num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
            num.getClass();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
        }
        return ((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i), packageName)).intValue() == 0;
    }

    public final void i(int i, Notification notification) {
        NotificationManager notificationManager = this.f15114g;
        Bundle bundle = notification.extras;
        if (bundle == null || !bundle.getBoolean("android.support.useSideChannel")) {
            notificationManager.notify(null, i, notification);
            return;
        }
        afb afbVar = new afb(this.f15113f.getPackageName(), i, notification);
        synchronized (f15110c) {
            try {
                if (f15112e == null) {
                    f15112e = new fyr(this.f15113f.getApplicationContext());
                }
                f15112e.f17659d.obtainMessage(0, afbVar).sendToTarget();
            } catch (Throwable th) {
                throw th;
            }
        }
        notificationManager.cancel(null, i);
    }
}
