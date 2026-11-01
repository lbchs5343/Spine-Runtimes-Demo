package com.tencent.bugly.proguard;

import android.app.Application;
import android.content.Context;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import g.abc;
import g.efr;
import java.util.List;

/* loaded from: classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f9788a = false;

    /* renamed from: b, reason: collision with root package name */
    public static r f9789b = null;

    /* renamed from: c, reason: collision with root package name */
    private static int f9790c = 10;

    /* renamed from: d, reason: collision with root package name */
    private static long f9791d = 300000;

    /* renamed from: e, reason: collision with root package name */
    private static long f9792e = 30000;

    /* renamed from: f, reason: collision with root package name */
    private static long f9793f = 0;

    /* renamed from: g, reason: collision with root package name */
    private static int f9794g = 0;
    private static long h = 0;
    private static long i = 0;
    private static long j = 0;
    private static Application.ActivityLifecycleCallbacks k = null;
    private static Class<?> l = null;
    private static boolean m = true;

    public static /* synthetic */ String a(String str, String str2) {
        return ap.a() + "  " + str + "  " + str2 + "\n";
    }

    public static void a() {
        r rVar = f9789b;
        if (rVar != null) {
            rVar.a(2, false);
        }
    }

    public static void a(long j2) {
        if (j2 < 0) {
            j2 = ac.a().c().p;
        }
        f9793f = j2;
    }

    public static void a(Context context) {
        if (!f9788a || context == null) {
            return;
        }
        Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
        if (application != null) {
            try {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = k;
                if (activityLifecycleCallbacks != null) {
                    application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
                }
            } catch (Exception e2) {
                if (!al.a(e2)) {
                    e2.printStackTrace();
                }
            }
        }
        f9788a = false;
    }

    public static void a(Context context, BuglyStrategy buglyStrategy) {
        long j2;
        if (f9788a) {
            return;
        }
        boolean z = aa.a(context).f9539f;
        m = z;
        f9789b = new r(context, z);
        f9788a = true;
        if (buglyStrategy != null) {
            l = buglyStrategy.getUserInfoActivity();
            j2 = buglyStrategy.getAppReportDelay();
        } else {
            j2 = 0;
        }
        if (j2 <= 0) {
            c(context, buglyStrategy);
        } else {
            ak.a().a(new efr(8, context, buglyStrategy, false), j2);
        }
    }

    public static void a(StrategyBean strategyBean, boolean z) {
        r rVar = f9789b;
        if (rVar != null && !z) {
            rVar.b();
        }
        if (strategyBean == null) {
            return;
        }
        long j2 = strategyBean.p;
        if (j2 > 0) {
            f9792e = j2;
        }
        int i2 = strategyBean.u;
        if (i2 > 0) {
            f9790c = i2;
        }
        long j3 = strategyBean.v;
        if (j3 > 0) {
            f9791d = j3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, BuglyStrategy buglyStrategy) {
        boolean z;
        boolean z2;
        if (buglyStrategy != null) {
            z2 = buglyStrategy.recordUserInfoOnceADay();
            z = buglyStrategy.isEnableUserInfo();
        } else {
            z = true;
            z2 = false;
        }
        if (z2) {
            aa a2 = aa.a(context);
            List<UserInfoBean> a3 = r.a(a2.f9537d);
            if (a3 != null) {
                for (int i2 = 0; i2 < a3.size(); i2++) {
                    UserInfoBean userInfoBean = a3.get(i2);
                    if (userInfoBean.n.equals(a2.o) && userInfoBean.f9488b == 1) {
                        long b2 = ap.b();
                        if (b2 <= 0) {
                            break;
                        }
                        if (userInfoBean.f9491e >= b2) {
                            if (userInfoBean.f9492f <= 0) {
                                f9789b.b();
                                return;
                            }
                            return;
                        }
                    }
                }
            }
            z = false;
        }
        aa b3 = aa.b();
        if (b3 != null && z.a()) {
            b3.a(0, true);
        }
        if (z) {
            Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
            if (application != null) {
                try {
                    if (k == null) {
                        k = new abc(1);
                    }
                    application.registerActivityLifecycleCallbacks(k);
                } catch (Exception e2) {
                    if (!al.a(e2)) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        if (m) {
            i = System.currentTimeMillis();
            f9789b.a(1, false);
            al.a("[session] launch app, new start", new Object[0]);
            f9789b.a();
            f9789b.a(21600000L);
        }
    }

    public static /* synthetic */ int g() {
        int i2 = f9794g;
        f9794g = i2 + 1;
        return i2;
    }
}
