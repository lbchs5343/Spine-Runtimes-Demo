package g;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class cwv implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: a, reason: collision with root package name */
    public static final cwv f13652a = new cwv();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f13655d = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f13656e = new AtomicBoolean();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f13653b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public boolean f13654c = false;

    public static void f(Application application) {
        cwv cwvVar = f13652a;
        synchronized (cwvVar) {
            try {
                if (!cwvVar.f13654c) {
                    application.registerActivityLifecycleCallbacks(cwvVar);
                    application.registerComponentCallbacks(cwvVar);
                    cwvVar.f13654c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(gxn gxnVar) {
        synchronized (f13652a) {
            this.f13653b.add(gxnVar);
        }
    }

    public final void h(boolean z) {
        synchronized (f13652a) {
            try {
                Iterator it = this.f13653b.iterator();
                while (it.hasNext()) {
                    ((gxn) it.next()).b(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f13655d.compareAndSet(true, false);
        this.f13656e.set(true);
        if (compareAndSet) {
            h(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.f13655d.compareAndSet(true, false);
        this.f13656e.set(true);
        if (compareAndSet) {
            h(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i == 20 && this.f13655d.compareAndSet(false, true)) {
            this.f13656e.set(true);
            h(true);
        }
    }
}
