package com.bytedance.msdk.ia;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public class no {

    /* renamed from: d, reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f1097d = new Application.ActivityLifecycleCallbacks() { // from class: com.bytedance.msdk.ia.no.1

        /* renamed from: d, reason: collision with root package name */
        private int f1098d = 0;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            int i = this.f1098d + 1;
            this.f1098d = i;
            if (i != 1 || no.this.dq == null) {
                return;
            }
            no.this.dq.dq();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            int i = this.f1098d - 1;
            this.f1098d = i;
            if (i != 0 || no.this.dq == null) {
                return;
            }
            no.this.dq.d();
        }
    };
    private dq dq;

    public interface dq {
        void d();

        void dq();
    }

    public void dq(Application application) {
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.f1097d);
        }
    }

    public void dq(Application application, dq dqVar) {
        if (application != null) {
            this.dq = dqVar;
            application.registerActivityLifecycleCallbacks(this.f1097d);
        }
    }
}
