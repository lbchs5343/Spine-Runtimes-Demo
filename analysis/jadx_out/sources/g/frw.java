package g;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public final class frw implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final int f17316a;

    /* renamed from: d, reason: collision with root package name */
    public Object f17319d;

    /* renamed from: e, reason: collision with root package name */
    public Activity f17320e;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17317b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17318c = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17321f = false;

    public frw(Activity activity) {
        this.f17320e = activity;
        this.f17316a = activity.hashCode();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (this.f17320e == activity) {
            this.f17320e = null;
            this.f17318c = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (!this.f17318c || this.f17321f || this.f17317b) {
            return;
        }
        Object obj = this.f17319d;
        try {
            Object obj2 = dfz.f14116f.get(activity);
            if (obj2 == obj && activity.hashCode() == this.f17316a) {
                dfz.f14117g.postAtFrontOfQueue(new gfh(dfz.f14115e.get(activity), 7, obj2));
                this.f17321f = true;
                this.f17319d = null;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.f17320e == activity) {
            this.f17317b = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
