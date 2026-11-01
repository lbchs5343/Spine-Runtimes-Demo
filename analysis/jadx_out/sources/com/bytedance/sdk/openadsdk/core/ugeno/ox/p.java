package com.bytedance.sdk.openadsdk.core.ugeno.ox;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.d.ia;
import com.bytedance.sdk.component.adexpress.d.jy;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.d.o;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.o.mn;
import g.tr;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class p implements o {

    /* renamed from: d, reason: collision with root package name */
    private ox f3618d;
    private Context dq;
    private mp ox;
    private ScheduledFuture<?> p;
    private AtomicBoolean s = new AtomicBoolean(false);

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
                p.this.f3618d.dq(true);
                p.this.dq(this.dq, 137);
            }
        }
    }

    public p(Context context, ox oxVar, ia iaVar, mp mpVar) {
        this.dq = context;
        this.f3618d = oxVar;
        this.ox = mpVar;
        this.f3618d.dq(iaVar);
    }

    private void d() {
        try {
            ScheduledFuture<?> scheduledFuture = this.p;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.p.cancel(false);
            this.p = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(o.dq dqVar, int i) {
        jy d2;
        if (dqVar.ox() || this.s.get()) {
            return;
        }
        d();
        tr trVar = new tr();
        trVar.f20062a = i;
        ((com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) this.ox).n().dq(trVar);
        if (dqVar.d(this)) {
            dqVar.dq(this);
        } else {
            if (dqVar.ox() || (d2 = dqVar.d()) == null) {
                return;
            }
            dqVar.dq(true);
            d2.a_(i);
        }
        this.s.getAndSet(true);
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public void dq() {
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public boolean dq(final o.dq dqVar) {
        int iw = this.ox.iw();
        if (iw < 0) {
            dq(dqVar, 137);
        } else {
            this.p = mn.p().schedule(new dq(1, dqVar), iw, TimeUnit.MILLISECONDS);
            this.f3618d.dq(new com.bytedance.sdk.component.adexpress.d.mn() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ox.p.1
                @Override // com.bytedance.sdk.component.adexpress.d.mn
                public void dq(int i, String str) {
                    jy d2;
                    tr trVar = new tr();
                    trVar.f20062a = i;
                    ((com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) p.this.ox).n().dq(trVar);
                    if (dqVar.d(p.this)) {
                        dqVar.dq(p.this);
                    } else {
                        if (dqVar.ox() || (d2 = dqVar.d()) == null) {
                            return;
                        }
                        d2.a_(i);
                    }
                }

                @Override // com.bytedance.sdk.component.adexpress.d.mn
                public void dq(View view, q qVar) {
                    if (dqVar.ox()) {
                        return;
                    }
                    tr trVar = new tr();
                    trVar.f20062a = 0;
                    ((com.bytedance.sdk.openadsdk.core.ugeno.ox.dq) p.this.ox).n().dq(trVar);
                    p.this.ox.s().mp();
                    jy d2 = dqVar.d();
                    if (d2 == null) {
                        return;
                    }
                    d2.dq(p.this.f3618d, qVar);
                    dqVar.dq(true);
                }
            });
        }
        return true;
    }
}
