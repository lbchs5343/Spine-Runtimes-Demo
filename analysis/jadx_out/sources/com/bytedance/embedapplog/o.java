package com.bytedance.embedapplog;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class o<SERVICE, RESULT> {

    /* renamed from: d, reason: collision with root package name */
    private final Intent f738d;
    private final CountDownLatch dq = new CountDownLatch(1);
    private final d<SERVICE, RESULT> ox;
    private final Context p;

    public interface d<T, RESULT> {
        T dq(IBinder iBinder);

        RESULT dq(T t);
    }

    public class dq implements ServiceConnection {
        SERVICE dq;
        private final CountDownLatch ox;
        private final d<SERVICE, RESULT> p;

        public dq(CountDownLatch countDownLatch, d<SERVICE, RESULT> dVar) {
            this.ox = countDownLatch;
            this.p = dVar;
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            jo.dq("ServiceBlockBinder#onServiceConnected ".concat(String.valueOf(componentName)));
            try {
                this.dq = this.p.dq(iBinder);
            } catch (Throwable th) {
                try {
                    jo.ox("ServiceBlockBinder#onServiceConnected", th);
                    try {
                        this.ox.countDown();
                    } catch (Exception e2) {
                        jo.dq(e2);
                    }
                } finally {
                    try {
                        this.ox.countDown();
                    } catch (Exception e3) {
                        jo.dq(e3);
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            jo.dq("ServiceBlockBinder#onServiceDisconnected".concat(String.valueOf(componentName)));
            try {
                this.ox.countDown();
            } catch (Exception e2) {
                jo.dq(e2);
            }
        }
    }

    public o(Context context, Intent intent, d<SERVICE, RESULT> dVar) {
        this.p = context;
        this.f738d = intent;
        this.ox = dVar;
    }

    private void dq(o<SERVICE, RESULT>.dq dqVar) {
        if (dqVar != null) {
            try {
                this.p.unbindService(dqVar);
            } catch (Throwable th) {
                jo.dq(th);
            }
        }
    }

    public RESULT dq() {
        o<SERVICE, RESULT>.dq dqVar;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            jo.ox("Don't do this in ui thread.", null);
            return null;
        }
        try {
            dqVar = new dq(this.dq, this.ox);
            this.p.bindService(this.f738d, dqVar, 1);
            this.dq.await();
            try {
                return this.ox.dq((d<SERVICE, RESULT>) dqVar.dq);
            } catch (Throwable th) {
                th = th;
                try {
                    jo.dq(th);
                    return null;
                } finally {
                    dq(dqVar);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            dqVar = null;
        }
    }
}
