package cn.trinea.android.lib.view;

import ab.bc.cd.a;
import android.content.Context;
import androidx.multidex.MultiDexApplication;
import g.abc;
import g.byh;
import g.ckd;
import g.dyd;
import g.eg;
import g.erl;
import g.fl;

/* loaded from: classes.dex */
public abstract class BaseApplication extends MultiDexApplication {
    public static void c(Context context, String str) {
        if (byh.aj(context)) {
            try {
                a.class.getMethod("a", Context.class, String.class).invoke(null, context, str);
            } catch (Exception e2) {
                erl.ai("ads is null", e2);
            }
        }
    }

    @Override // androidx.multidex.MultiDexApplication, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        try {
            super.attachBaseContext(eg.ad(context));
        } catch (Exception unused) {
            super.attachBaseContext(context);
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        ckd.af(byh.ax(this, "dark_mode", "follow_system"));
        if (byh.i == null) {
            byh.i = Boolean.valueOf((getApplicationInfo() == null || (getApplicationInfo().flags & 2) == 0) ? false : true);
        }
        Context applicationContext = getApplicationContext();
        byh.k = !dyd.av(applicationContext) || applicationContext.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("is_agree_newest_agreement", false);
        byh.q(this);
        registerActivityLifecycleCallbacks(new abc(0));
        fl.f16955b = getPackageName();
    }
}
