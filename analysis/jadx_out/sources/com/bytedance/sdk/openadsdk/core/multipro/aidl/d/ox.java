package com.bytedance.sdk.openadsdk.core.multipro.aidl.d;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.core.f;

/* loaded from: classes3.dex */
public class ox extends f.dq {

    /* renamed from: d, reason: collision with root package name */
    private Handler f3183d = new Handler(Looper.getMainLooper());
    private com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dq;

    public ox(com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar) {
        this.dq = dqVar;
    }

    private void ia() {
        this.dq = null;
        this.f3183d = null;
    }

    private Handler kk() {
        Handler handler = this.f3183d;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f3183d = handler2;
        return handler2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.f
    public void d() throws RemoteException {
        kk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.ox.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar = ox.this.dq;
                if (dqVar != null) {
                    dqVar.dq();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.f
    public void dq() throws RemoteException {
        ia();
    }

    @Override // com.bytedance.sdk.openadsdk.core.f
    public void iw() throws RemoteException {
        kk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.ox.5
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar = ox.this.dq;
                if (dqVar != null) {
                    dqVar.s();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.f
    public void ox() throws RemoteException {
        kk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.ox.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar = ox.this.dq;
                if (dqVar != null) {
                    dqVar.d();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.f
    public void p() throws RemoteException {
        kk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.ox.3
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar = ox.this.dq;
                if (dqVar != null) {
                    dqVar.ox();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.f
    public void s() throws RemoteException {
        kk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.ox.4
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar = ox.this.dq;
                if (dqVar != null) {
                    dqVar.p();
                }
            }
        });
    }
}
