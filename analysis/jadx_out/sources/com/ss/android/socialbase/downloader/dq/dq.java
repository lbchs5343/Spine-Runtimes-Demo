package com.ss.android.socialbase.downloader.dq;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.socialbase.downloader.kk.iw;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private ox f9368d;
    private Application dq;
    private final Application.ActivityLifecycleCallbacks ia;
    private volatile int iw;
    private volatile boolean mn;
    private final List<InterfaceC0248dq> ox;
    private int p;
    private WeakReference<Activity> s;

    public static class d {
        private static final dq dq = new dq();
    }

    /* renamed from: com.ss.android.socialbase.downloader.dq.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0248dq {
        void d();

        void ox();
    }

    public interface ox {
    }

    private dq() {
        this.ox = new ArrayList();
        this.iw = -1;
        this.mn = false;
        this.ia = new Application.ActivityLifecycleCallbacks() { // from class: com.ss.android.socialbase.downloader.dq.dq.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                dq.this.mn = true;
                if (dq.this.p != 0 || activity == null) {
                    return;
                }
                dq.this.p = activity.hashCode();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                int i = dq.this.p;
                dq.this.mn = false;
                dq.this.p = activity != null ? activity.hashCode() : i;
                if (i == 0) {
                    dq.this.s();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                dq.this.s = new WeakReference(activity);
                int i = dq.this.p;
                dq.this.p = activity != null ? activity.hashCode() : i;
                dq.this.mn = false;
                if (i == 0) {
                    dq.this.s();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                if (activity != null && activity.hashCode() == dq.this.p) {
                    dq.this.p = 0;
                    dq.this.iw();
                }
                dq.this.mn = false;
            }
        };
    }

    public static dq dq() {
        return d.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() {
        this.iw = 0;
        Object[] p = p();
        if (p != null) {
            for (Object obj : p) {
                ((InterfaceC0248dq) obj).ox();
            }
        }
    }

    private boolean mn() {
        try {
            Application application = this.dq;
            if (application == null) {
                return false;
            }
            application.getSystemService(TTDownloadField.TT_ACTIVITY);
            return TextUtils.equals(application.getPackageName(), iw.p(application));
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private Object[] p() {
        Object[] array;
        synchronized (this.ox) {
            try {
                array = this.ox.size() > 0 ? this.ox.toArray() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return array;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.iw = 1;
        Object[] p = p();
        if (p != null) {
            for (Object obj : p) {
                ((InterfaceC0248dq) obj).d();
            }
        }
    }

    public void d(InterfaceC0248dq interfaceC0248dq) {
        synchronized (this.ox) {
            this.ox.remove(interfaceC0248dq);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    public boolean d() {
        int i = this.iw;
        int i2 = i;
        if (i == -1) {
            ?? mn = mn();
            this.iw = mn;
            i2 = mn;
        }
        return i2 == 1;
    }

    public void dq(Context context) {
        if (this.dq == null && (context instanceof Application)) {
            synchronized (this) {
                try {
                    if (this.dq == null) {
                        Application application = (Application) context;
                        this.dq = application;
                        application.registerActivityLifecycleCallbacks(this.ia);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void dq(InterfaceC0248dq interfaceC0248dq) {
        if (interfaceC0248dq == null) {
            return;
        }
        synchronized (this.ox) {
            try {
                if (!this.ox.contains(interfaceC0248dq)) {
                    this.ox.add(interfaceC0248dq);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(ox oxVar) {
        this.f9368d = oxVar;
    }

    public boolean ox() {
        return d() && !this.mn;
    }
}
