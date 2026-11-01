package com.bytedance.sdk.openadsdk.core.multipro.aidl.d;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.core.r;

/* loaded from: classes3.dex */
public class iw extends r.dq {

    /* renamed from: d, reason: collision with root package name */
    private Handler f3177d = new Handler(Looper.getMainLooper());
    private volatile com.bytedance.sdk.openadsdk.core.o.d.dq dq;

    public iw(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
        this.dq = dqVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
        return dqVar != null;
    }

    private Handler p() {
        Handler handler = this.f3177d;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f3177d = handler2;
        return handler2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.r
    public void d(final long j, final long j2, final String str, final String str2) throws RemoteException {
        if (this.dq != null) {
            p().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.o.d.dq dqVar = iw.this.dq;
                    if (iw.this.dq(dqVar)) {
                        dqVar.d(j, j2, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.r
    public void dq() throws RemoteException {
        if (this.dq != null) {
            p().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.o.d.dq dqVar = iw.this.dq;
                    if (iw.this.dq(dqVar)) {
                        dqVar.dq();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.r
    public void dq(final long j, final long j2, final String str, final String str2) throws RemoteException {
        if (this.dq != null) {
            p().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.o.d.dq dqVar = iw.this.dq;
                    if (iw.this.dq(dqVar)) {
                        dqVar.dq(j, j2, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.r
    public void dq(final long j, final String str, final String str2) throws RemoteException {
        if (this.dq != null) {
            p().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw.5
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.o.d.dq dqVar = iw.this.dq;
                    if (iw.this.dq(dqVar)) {
                        dqVar.dq(j, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.r
    public void dq(final String str, final String str2) throws RemoteException {
        if (this.dq != null) {
            p().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw.6
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.o.d.dq dqVar = iw.this.dq;
                    if (iw.this.dq(dqVar)) {
                        String str3 = str;
                        if (str3 == null) {
                            str3 = "";
                        }
                        String str4 = str2;
                        dqVar.dq(str3, str4 != null ? str4 : "");
                    }
                }
            });
        }
    }

    public void ox() {
        this.dq = null;
        this.f3177d = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.r
    public void ox(final long j, final long j2, final String str, final String str2) throws RemoteException {
        if (this.dq != null) {
            p().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw.4
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.o.d.dq dqVar = iw.this.dq;
                    if (iw.this.dq(dqVar)) {
                        dqVar.ox(j, j2, str, str2);
                    }
                }
            });
        }
    }
}
