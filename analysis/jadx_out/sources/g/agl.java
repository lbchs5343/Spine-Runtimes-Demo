package g;

import android.app.AppOpsManager;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;
import android.os.Trace;
import androidx.work.impl.foreground.SystemForegroundService;

/* loaded from: classes.dex */
public abstract class agl {
    public static void a(Notification.Action.Builder builder) {
        builder.setContextual(false);
    }

    public static Insets b(int i, int i2, int i3, int i4) {
        return Insets.of(i, i2, i3, i4);
    }

    public static void c(Resources.Theme theme) {
        theme.rebase();
    }

    public static String d(Context context) {
        return context.getOpPackageName();
    }

    public static void e(Notification.Builder builder, boolean z) {
        builder.setAllowSystemGeneratedContextualActions(z);
    }

    public static void f(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        systemForegroundService.startForeground(i, notification, i2);
    }

    public static AppOpsManager g(Context context) {
        return (AppOpsManager) context.getSystemService(AppOpsManager.class);
    }

    public static void h(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        try {
            systemForegroundService.startForeground(i, notification, i2);
        } catch (ForegroundServiceStartNotAllowedException unused) {
            cyl f2 = cyl.f();
            int i3 = SystemForegroundService.f346a;
            f2.getClass();
        } catch (SecurityException unused2) {
            cyl f3 = cyl.f();
            int i4 = SystemForegroundService.f346a;
            f3.getClass();
        }
    }

    public static boolean i() {
        return Trace.isEnabled();
    }

    public static void j(Notification.Builder builder) {
        builder.setBubbleMetadata(null);
    }
}
