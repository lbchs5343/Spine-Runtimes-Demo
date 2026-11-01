package com.bytedance.sdk.openadsdk.core.multipro.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.dq;

/* loaded from: classes3.dex */
public class BinderPoolService extends Service {
    private Binder dq = new dq.BinderC0173dq();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.dq;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
