package com.bytedance.sdk.openadsdk.core.multipro.aidl.d;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.core.ir.mn;
import com.bytedance.sdk.openadsdk.core.jy;

/* loaded from: classes3.dex */
public class d extends jy.dq {

    /* renamed from: d, reason: collision with root package name */
    private mn.dq f3174d;
    private Handler dq = new Handler(Looper.getMainLooper());

    public d(mn.dq dqVar) {
        this.f3174d = dqVar;
    }

    private void dq(Runnable runnable) {
        if (this.dq == null) {
            this.dq = new Handler(Looper.getMainLooper());
        }
        this.dq.post(runnable);
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy
    public void dq() throws RemoteException {
        dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f3174d != null) {
                    d.this.f3174d.dq();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy
    public void dq(final String str) throws RemoteException {
        dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f3174d != null) {
                    d.this.f3174d.dq(str);
                }
            }
        });
    }
}
