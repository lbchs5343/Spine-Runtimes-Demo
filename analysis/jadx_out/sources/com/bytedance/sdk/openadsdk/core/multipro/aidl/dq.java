package com.bytedance.sdk.openadsdk.core.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.mp;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.d;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.iw;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.mn;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.ox;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.p;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.s;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public class dq {
    private static volatile dq ox;

    /* renamed from: d, reason: collision with root package name */
    private mp f3188d;
    private Context dq;
    private CountDownLatch p;
    private final Object s = new Object();
    private long iw = 0;
    private ServiceConnection mn = new ServiceConnection() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            dq.this.f3188d = mp.dq.dq(iBinder);
            try {
                dq.this.f3188d.asBinder().linkToDeath(dq.this.ia, 0);
            } catch (RemoteException e2) {
                ig.d("MultiProcess", "onServiceConnected throws :", e2);
            }
            dq.this.p.countDown();
            System.currentTimeMillis();
            long unused = dq.this.iw;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            ig.dq("MultiProcess", "BinderPool......onServiceDisconnected");
        }
    };
    private IBinder.DeathRecipient ia = new IBinder.DeathRecipient() { // from class: com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.2
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ig.d("MultiProcess", "binder died.");
            dq.this.f3188d.asBinder().unlinkToDeath(dq.this.ia, 0);
            dq.this.f3188d = null;
            dq.this.dq();
        }
    };

    /* renamed from: com.bytedance.sdk.openadsdk.core.multipro.aidl.dq$dq, reason: collision with other inner class name */
    public static class BinderC0173dq extends mp.dq {
        @Override // com.bytedance.sdk.openadsdk.core.mp
        public IBinder dq(int i) throws RemoteException {
            if (i == 0) {
                return mn.d();
            }
            if (i == 1) {
                return s.d();
            }
            if (i == 2) {
                return ox.d();
            }
            if (i == 3) {
                return d.d();
            }
            if (i == 4) {
                return p.d();
            }
            if (i != 5) {
                return null;
            }
            return iw.d();
        }
    }

    private dq(Context context) {
        this.dq = context.getApplicationContext();
        dq();
    }

    public static dq dq(Context context) {
        if (ox == null) {
            synchronized (dq.class) {
                try {
                    if (ox == null) {
                        ox = new dq(context);
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void dq() {
        ig.dq("MultiProcess", "BinderPool......connectBinderPoolService");
        this.p = new CountDownLatch(1);
        try {
            this.dq.bindService(new Intent(this.dq, (Class<?>) BinderPoolService.class), this.mn, 1);
            this.iw = System.currentTimeMillis();
            this.p.await();
        } catch (Exception e2) {
            ig.d("MultiProcess", "connectBinderPoolService throws: ", e2);
        }
    }

    public IBinder dq(int i) {
        try {
            mp mpVar = this.f3188d;
            if (mpVar != null) {
                return mpVar.dq(i);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
