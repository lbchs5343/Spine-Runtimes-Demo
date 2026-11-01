package com.bytedance.sdk.openadsdk.core.multipro.aidl.d;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.bytedance.sdk.openadsdk.core.gh;
import com.bytedance.sdk.openadsdk.core.op;

/* loaded from: classes3.dex */
public class s extends gh.dq {

    /* renamed from: d, reason: collision with root package name */
    private Handler f3185d = new Handler(Looper.getMainLooper());
    private com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dq;

    public s(com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar) {
        this.dq = dqVar;
    }

    private void kk() {
        this.dq = null;
        this.f3185d = null;
    }

    private Handler o() {
        Handler handler = this.f3185d;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f3185d = handler2;
        return handler2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void d() throws RemoteException {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar != null) {
                    dqVar.dq();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void dq() throws RemoteException {
        kk();
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void dq(final boolean z, final int i, final Bundle bundle) {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.8
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar == null || op.f3334d < 4400) {
                    return;
                }
                try {
                    dqVar.dq(z, i, bundle);
                } catch (AbstractMethodError unused) {
                    Log.e("RewardVideoListenerImpl", "onRewardArrived 未实现！");
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void dq(final boolean z, final int i, final String str, final int i2, final String str2) throws RemoteException {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.7
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar != null) {
                    dqVar.dq(z, i, str, i2, str2);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void iw() throws RemoteException {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.5
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar != null) {
                    dqVar.s();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void mn() throws RemoteException {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.6
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar != null) {
                    dqVar.iw();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void ox() throws RemoteException {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar != null) {
                    dqVar.d();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void p() throws RemoteException {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.3
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar != null) {
                    dqVar.ox();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh
    public void s() throws RemoteException {
        o().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s.4
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = s.this.dq;
                if (dqVar != null) {
                    dqVar.p();
                }
            }
        });
    }
}
