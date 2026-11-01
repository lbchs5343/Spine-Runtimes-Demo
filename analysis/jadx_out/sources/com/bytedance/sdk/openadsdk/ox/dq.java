package com.bytedance.sdk.openadsdk.ox;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes3.dex */
class dq implements Application.ActivityLifecycleCallbacks {
    private static volatile boolean dq;

    /* renamed from: d, reason: collision with root package name */
    private int f3844d = 0;
    private InterfaceC0204dq ox;

    /* renamed from: com.bytedance.sdk.openadsdk.ox.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0204dq {
        void d();

        void dq();
    }

    public Boolean dq() {
        return Boolean.valueOf(dq);
    }

    public void dq(InterfaceC0204dq interfaceC0204dq) {
        this.ox = interfaceC0204dq;
    }

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
        this.f3844d++;
        dq = false;
        InterfaceC0204dq interfaceC0204dq = this.ox;
        if (interfaceC0204dq != null) {
            interfaceC0204dq.d();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i = this.f3844d - 1;
        this.f3844d = i;
        if (i == 0) {
            dq = true;
            InterfaceC0204dq interfaceC0204dq = this.ox;
            if (interfaceC0204dq != null) {
                interfaceC0204dq.dq();
            }
        }
    }
}
