package com.bytedance.sdk.openadsdk.core.multipro.aidl.d;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.q;

/* loaded from: classes3.dex */
public class dq extends q.dq {

    /* renamed from: d, reason: collision with root package name */
    private iw.dq f3176d;
    private Handler dq = new Handler(Looper.getMainLooper());

    public dq(iw.dq dqVar) {
        this.f3176d = dqVar;
    }

    private void dq(Runnable runnable) {
        this.dq.post(runnable);
    }

    @Override // com.bytedance.sdk.openadsdk.core.q
    public void d() throws RemoteException {
        dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.dq.2
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.f3176d != null) {
                    dq.this.f3176d.d();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.q
    public void dq() throws RemoteException {
        dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.dq.1
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.f3176d != null) {
                    dq.this.f3176d.dq();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.q
    public void ox() throws RemoteException {
        dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.dq.3
            @Override // java.lang.Runnable
            public void run() {
                if (dq.this.f3176d != null) {
                    dq.this.f3176d.ox();
                }
            }
        });
    }
}
