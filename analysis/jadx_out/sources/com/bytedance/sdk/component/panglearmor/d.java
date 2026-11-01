package com.bytedance.sdk.component.panglearmor;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.bytedance.pangle.annotations.ForbidWrapParam;

/* loaded from: classes.dex */
public class d implements Application.ActivityLifecycleCallbacks {
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private final ox f2167d;

    private d(Application application) {
        this.f2167d = ox.dq(application);
    }

    public static d dq(Application application) {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d(application);
                        application.registerActivityLifecycleCallbacks(dq);
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public void d(Application application) {
        application.unregisterActivityLifecycleCallbacks(this);
    }

    public String dq(String str, long j, int i, boolean z) {
        ox oxVar = this.f2167d;
        if (oxVar != null) {
            return oxVar.dq(str, j, i, z);
        }
        return null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@ForbidWrapParam Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@ForbidWrapParam Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        View decorView;
        if (Build.VERSION.SDK_INT < 29 || activity == null || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        dq.dq(decorView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        View decorView;
        if (Build.VERSION.SDK_INT >= 29 || activity == null || activity.getWindow() == null || (decorView = activity.getWindow().getDecorView()) == null) {
            return;
        }
        dq.dq(decorView);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@ForbidWrapParam Activity activity) {
        ox oxVar = this.f2167d;
        if (oxVar != null) {
            oxVar.dq(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@ForbidWrapParam Activity activity) {
        ox oxVar = this.f2167d;
        if (oxVar != null) {
            oxVar.d(activity);
        }
    }
}
