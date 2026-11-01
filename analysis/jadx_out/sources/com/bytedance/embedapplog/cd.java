package com.bytedance.embedapplog;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import g.awf;
import java.util.HashSet;

/* loaded from: classes.dex */
public class cd implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d, reason: collision with root package name */
    private static bu f710d = null;
    private static int dq = 0;
    private static String iw = null;
    private static final HashSet<Integer> kk = new HashSet<>(8);
    private static int mn = -1;
    private static long ox;
    private static String p;
    private static long s;
    private final iw ia;

    public cd(iw iwVar) {
        this.ia = iwVar;
    }

    public static bu dq(bu buVar, long j) {
        bu buVar2 = (bu) buVar.clone();
        buVar2.f713d = j;
        long j2 = j - buVar.f713d;
        if (j2 >= 0) {
            buVar2.ig = j2;
        } else {
            jo.d((Throwable) null);
        }
        le.dq(buVar2);
        return buVar2;
    }

    public static bu dq(String str, String str2, long j, String str3) {
        bu buVar = new bu();
        if (TextUtils.isEmpty(str2)) {
            buVar.q = str;
        } else {
            buVar.q = awf.i(str, ":", str2);
        }
        buVar.f713d = j;
        buVar.ig = -1L;
        if (str3 == null) {
            str3 = "";
        }
        buVar.mp = str3;
        le.dq(buVar);
        return buVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        kk.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        kk.remove(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        bu buVar = f710d;
        if (buVar != null) {
            p = buVar.q;
            long currentTimeMillis = System.currentTimeMillis();
            ox = currentTimeMillis;
            dq(f710d, currentTimeMillis);
            f710d = null;
            if (activity.isChild()) {
                return;
            }
            mn = -1;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        bu dq2 = dq(activity.getClass().getName(), "", System.currentTimeMillis(), p);
        f710d = dq2;
        dq2.gh = !kk.remove(Integer.valueOf(activity.hashCode())) ? 1 : 0;
        if (activity.isChild()) {
            return;
        }
        try {
            mn = activity.getWindow().getDecorView().hashCode();
        } catch (Exception e2) {
            jo.d(e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        dq++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (p != null) {
            int i = dq - 1;
            dq = i;
            if (i <= 0) {
                p = null;
                iw = null;
                s = 0L;
                ox = 0L;
            }
        }
    }
}
