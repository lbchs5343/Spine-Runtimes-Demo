package com.bytedance.msdk.iw.d.dq;

import android.content.Context;
import android.os.Looper;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.msdk.iw.d;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.iw.d.dq {
    @Override // com.bytedance.msdk.iw.d.dq
    public void d(final Context context) {
        no();
        iw.p(new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.dq.2
            @Override // java.lang.Runnable
            public void run() {
                dq.this.mp();
                dq.this.ia();
                dq.this.kk();
                dq.this.jy();
                dq.this.o();
                dq.this.ig();
                com.bytedance.msdk.iw.d.dq.q();
                d.dq(context);
                ((com.bytedance.msdk.iw.d.dq) dq.this).f1103d.set(true);
                dq.this.f();
            }
        });
    }

    @Override // com.bytedance.msdk.iw.d.dq
    public void dq(Context context) {
        Runnable runnable = new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.dq.1
            @Override // java.lang.Runnable
            public void run() {
                dq.this.iw();
                dq.this.mn();
                ((com.bytedance.msdk.iw.d.dq) dq.this).dq.set(true);
                dq.this.f();
            }
        };
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            iw.ox(runnable);
        }
    }

    @Override // com.bytedance.msdk.iw.d.dq
    public void jy() {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.dq.3
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.msdk.iw.d.dq) dq.this).ox != null) {
                    ((com.bytedance.msdk.iw.d.dq) dq.this).ox.dq();
                }
            }
        });
    }

    @Override // com.bytedance.msdk.iw.d.dq
    public void ox(Context context) {
        d(context);
        dq(context);
    }
}
