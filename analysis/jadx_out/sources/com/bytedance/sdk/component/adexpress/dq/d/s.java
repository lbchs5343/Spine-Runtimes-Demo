package com.bytedance.sdk.component.adexpress.dq.d;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dq.ox.dq;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.fw;
import com.bytedance.sdk.component.utils.ig;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class s extends ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile s f1673d;
    private static File dq;
    private AtomicBoolean ox = new AtomicBoolean(true);
    private AtomicBoolean p = new AtomicBoolean(false);
    private boolean s = false;
    private AtomicBoolean iw = new AtomicBoolean(false);
    private AtomicInteger mn = new AtomicInteger(0);
    private AtomicLong ia = new AtomicLong();

    private s() {
        ia();
    }

    public static s d() {
        if (f1673d == null) {
            synchronized (s.class) {
                try {
                    if (f1673d == null) {
                        f1673d = new s();
                    }
                } finally {
                }
            }
        }
        return f1673d;
    }

    private void ia() {
        com.bytedance.sdk.component.adexpress.p.p.d(new kk("init") { // from class: com.bytedance.sdk.component.adexpress.dq.d.s.1
            @Override // java.lang.Runnable
            public void run() {
                ia.dq();
                s.this.ox.set(false);
                s.this.ox();
                s.this.iw();
                if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() == null || !fw.dq(com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext())) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().d().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dq.d.s.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() != null) {
                            com.bytedance.sdk.component.adexpress.dq.dq.dq.dq();
                        }
                    }
                });
            }
        }, 10);
    }

    private void kk() {
        if (this.mn.getAndSet(0) <= 0 || System.currentTimeMillis() - this.ia.get() <= 600000) {
            return;
        }
        iw();
    }

    public static File mn() {
        if (dq == null) {
            try {
                File file = new File(new File(p.dq(), "tt_tmpl_pkg"), "template");
                file.mkdirs();
                dq = file;
            } catch (Throwable th) {
                ig.d("TemplateManager", "getTemplateDir error", th);
            }
        }
        return dq;
    }

    @Override // com.bytedance.sdk.component.adexpress.dq.d.ox
    public File dq() {
        return mn();
    }

    public void dq(boolean z) {
        List<dq.C0104dq> list;
        boolean z2;
        if (this.ox.get()) {
            return;
        }
        try {
            if (this.p.get()) {
                if (z) {
                    this.mn.getAndIncrement();
                    return;
                }
                return;
            }
            boolean z3 = true;
            this.p.set(true);
            com.bytedance.sdk.component.adexpress.dq.ox.dq ox = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().ox();
            com.bytedance.sdk.component.adexpress.dq.ox.dq d2 = ia.d();
            if (ox != null && ox.iw()) {
                if (!ia.d(ox)) {
                    this.p.set(false);
                    this.ia.set(System.currentTimeMillis());
                    return;
                }
                if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() != null) {
                    com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().d().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dq.d.s.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.component.adexpress.s.s.dq().d();
                        }
                    });
                }
                ia.dq(ox);
                boolean dq2 = (ox.s() == null || TextUtils.isEmpty(ox.s().dq())) ? false : dq(ox.s().dq());
                if (ox.dq().size() != 0) {
                    list = dq(ox, d2);
                    z2 = list != null;
                } else {
                    list = null;
                    z2 = dq2;
                }
                if (!dq2) {
                    List<dq.C0104dq> d3 = d(ox, d2);
                    if (list == null || d3 == null) {
                        list = d3;
                    } else {
                        list.addAll(d3);
                    }
                    if (d3 == null) {
                        z3 = false;
                    }
                    if (d3 == null) {
                        this.p.set(false);
                    }
                    z2 = z3;
                }
                if (z2 && dq(ox)) {
                    ia.dq(ox);
                    ia.ox();
                    d(list);
                }
                ox();
                this.p.set(false);
                this.ia.set(System.currentTimeMillis());
                kk();
                return;
            }
            this.p.set(false);
            dq(109);
        } catch (Throwable unused) {
        }
    }

    public boolean dq(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar) {
        if (dqVar == null) {
            return false;
        }
        return dq(dqVar.dq()) || dq(dqVar.s()) || dq(dqVar.getResources());
    }

    public void iw() {
        dq(false);
    }

    public void ox() {
        com.bytedance.sdk.component.adexpress.dq.ox.dq d2 = ia.d();
        if (d2 == null || !d2.iw()) {
            return;
        }
        boolean dq2 = dq(d2);
        if (!dq2) {
            ia.p();
        }
        this.s = dq2;
    }

    public boolean p() {
        return this.s;
    }

    public com.bytedance.sdk.component.adexpress.dq.ox.dq s() {
        return ia.d();
    }
}
