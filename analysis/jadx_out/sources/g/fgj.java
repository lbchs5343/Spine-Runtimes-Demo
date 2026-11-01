package g;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import cn.trinea.android.developertools.R;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class fgj {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f16743a = new AtomicInteger(357);

    /* renamed from: b, reason: collision with root package name */
    public static volatile fgj f16744b;

    /* renamed from: c, reason: collision with root package name */
    public volatile fbc f16745c;

    public static Context d(Context context) {
        Context applicationContext;
        return (context == null || (applicationContext = context.getApplicationContext()) == null) ? context : applicationContext instanceof Application ? ((Application) applicationContext).getBaseContext() : applicationContext;
    }

    public static fgj e() {
        if (f16744b == null) {
            synchronized (fgj.class) {
                try {
                    if (f16744b == null) {
                        fgj fgjVar = new fgj();
                        new AtomicBoolean(false);
                        f16744b = fgjVar;
                    }
                } finally {
                }
            }
        }
        return f16744b;
    }

    public final boolean f(Context context, Intent intent) {
        return g(context, intent, true, false, true);
    }

    public final boolean g(Context context, Intent intent, boolean z, boolean z2, boolean z3) {
        if (z3 && this.f16745c != null) {
            this.f16745c.getClass();
            if (!fbc.s(context, intent)) {
                gm.c(context, R.string.need_pro_version);
                return false;
            }
        }
        if (z2) {
            try {
                synchronized (PackageManager.class) {
                    try {
                        PackageManager packageManager = context.getPackageManager();
                        if (packageManager != null && acw.u(packageManager.queryIntentActivities(intent, 0))) {
                            return false;
                        }
                    } finally {
                    }
                }
            } catch (Throwable unused) {
                if (z) {
                    gm.f(context.getApplicationContext(), R.string.start_activity_failed);
                }
                return false;
            }
        }
        context.startActivity(intent);
        return true;
    }

    public final void h(Context context, Intent intent, boolean z) {
        g(context, intent, z, false, true);
    }
}
