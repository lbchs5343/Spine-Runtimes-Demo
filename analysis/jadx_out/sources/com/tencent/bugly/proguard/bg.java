package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;

/* loaded from: classes.dex */
public final class bg extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public bf f9686a;

    /* renamed from: g, reason: collision with root package name */
    private a f9692g;

    /* renamed from: c, reason: collision with root package name */
    private boolean f9688c = false;

    /* renamed from: d, reason: collision with root package name */
    private boolean f9689d = true;

    /* renamed from: e, reason: collision with root package name */
    private boolean f9690e = false;

    /* renamed from: f, reason: collision with root package name */
    private int f9691f = 1;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9687b = true;

    public interface a {
    }

    private synchronized void a(bf bfVar) {
        if (this.f9689d) {
            return;
        }
        if (this.f9690e && !bfVar.a()) {
            al.c("Restart getting main stack trace.", new Object[0]);
            this.f9689d = true;
            this.f9690e = false;
        }
    }

    public final boolean a() {
        this.f9688c = true;
        if (!isAlive()) {
            return false;
        }
        try {
            interrupt();
        } catch (Exception e2) {
            al.b(e2);
        }
        al.d("MainHandlerChecker is reset to null.", new Object[0]);
        this.f9686a = null;
        return true;
    }

    public final boolean b() {
        Handler handler = new Handler(Looper.getMainLooper());
        bf bfVar = this.f9686a;
        if (bfVar != null) {
            bfVar.f9680b = PushUIConfig.dismissTime;
        } else {
            this.f9686a = new bf(handler, handler.getLooper().getThread().getName());
        }
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e2) {
            al.b(e2);
            return false;
        }
    }

    public final synchronized void c() {
        this.f9689d = false;
        al.c("Record stack trace is disabled.", new Object[0]);
    }

    public final synchronized void d() {
        this.f9690e = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0074, code lost:
    
        r2.d();
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        bf bfVar;
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        while (!this.f9688c) {
            try {
                bfVar = this.f9686a;
                z = false;
            } catch (Exception e2) {
                al.b(e2);
            } catch (OutOfMemoryError e3) {
                al.b(e3);
            }
            if (bfVar == null) {
                al.c("Main handler checker is null. Stop thread monitor.", new Object[0]);
                return;
            }
            if (bfVar.f9681c) {
                bfVar.f9681c = false;
                bfVar.f9682d = SystemClock.uptimeMillis();
                bfVar.f9679a.post(bfVar);
            }
            a(bfVar);
            if (this.f9687b && this.f9689d) {
                long b2 = bfVar.b();
                if (b2 > 1510 && b2 < 199990) {
                    boolean z2 = true;
                    if (b2 <= 5010) {
                        this.f9691f = 1;
                        al.c("timeSinceMsgSent in [2s, 5s], record stack", new Object[0]);
                        z = true;
                    } else {
                        int i = this.f9691f;
                        int i2 = i + 1;
                        this.f9691f = i2;
                        if ((i & i2) != 0) {
                            z2 = false;
                        }
                        if (z2) {
                            al.c("timeSinceMsgSent in (5s, 200s), should record stack:true", new Object[0]);
                        }
                        z = z2;
                    }
                }
            }
            if (this.f9692g != null && this.f9689d) {
                bfVar.a();
                bfVar.b();
            }
            ap.b(500 - ((System.currentTimeMillis() - currentTimeMillis) % 500));
        }
    }
}
