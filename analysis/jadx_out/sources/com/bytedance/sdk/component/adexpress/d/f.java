package com.bytedance.sdk.component.adexpress.d;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.d.o;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class f implements o {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.s.dq f1655d;
    private Context dq;
    private AtomicBoolean iw = new AtomicBoolean(false);
    private ia ox;
    private mp p;
    private ScheduledFuture<?> s;

    public class dq implements Runnable {
        o.dq dq;
        private int ox;

        public dq(int i, o.dq dqVar) {
            this.ox = i;
            this.dq = dqVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.ox == 1) {
                f.this.f1655d.dq(true);
                f.this.dq(this.dq, 107, null);
            }
        }
    }

    public f(Context context, mp mpVar, com.bytedance.sdk.component.adexpress.s.dq dqVar, ia iaVar) {
        this.dq = context;
        this.p = mpVar;
        this.ox = iaVar;
        this.f1655d = dqVar;
        dqVar.dq(this.ox);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(o.dq dqVar, int i, String str) {
        jy d2;
        if (dqVar.ox() || this.iw.get()) {
            return;
        }
        ox();
        this.p.s().dq(i, str);
        if (dqVar.d(this)) {
            dqVar.dq(this);
        } else {
            if (dqVar.ox() || (d2 = dqVar.d()) == null) {
                return;
            }
            dqVar.dq(true);
            d2.a_(i);
        }
        this.iw.getAndSet(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        try {
            ScheduledFuture<?> scheduledFuture = this.s;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.s.cancel(false);
            this.s = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public com.bytedance.sdk.component.adexpress.s.dq d() {
        return this.f1655d;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public void dq() {
        this.f1655d.p();
        ox();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public boolean dq(final o.dq dqVar) {
        int iw = this.p.iw();
        if (iw < 0) {
            dq(dqVar, 107, "time is ".concat(String.valueOf(iw)));
        } else {
            this.s = com.bytedance.sdk.component.adexpress.p.p.dq(new dq(1, dqVar), iw, TimeUnit.MILLISECONDS);
            this.f1655d.dq(new mn() { // from class: com.bytedance.sdk.component.adexpress.d.f.1
                @Override // com.bytedance.sdk.component.adexpress.d.mn
                public void dq(int i, String str) {
                    f.this.dq(dqVar, i, str);
                }

                @Override // com.bytedance.sdk.component.adexpress.d.mn
                public void dq(View view, q qVar) {
                    jy d2;
                    f.this.ox();
                    if (dqVar.ox() || (d2 = dqVar.d()) == null) {
                        return;
                    }
                    d2.dq(f.this.f1655d, qVar);
                    dqVar.dq(true);
                }
            });
        }
        return true;
    }
}
