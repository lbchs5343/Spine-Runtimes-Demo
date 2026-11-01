package com.bytedance.sdk.component.dq;

import com.bytedance.component.sdk.annotation.AnyThread;
import com.bytedance.component.sdk.annotation.UiThread;
import com.bytedance.sdk.component.dq.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class fw {
    static le dq;

    /* renamed from: d, reason: collision with root package name */
    private final dq f1865d;
    private volatile boolean iw;
    private final com.bytedance.sdk.component.mp.dq ox;
    private final o p;
    private final List<q> s;

    public fw(o oVar) {
        le leVar;
        ArrayList arrayList = new ArrayList();
        this.s = arrayList;
        this.iw = false;
        this.p = oVar;
        i dq2 = (!oVar.ia || (leVar = dq) == null) ? null : leVar.dq(oVar.no);
        if (oVar.dq != null) {
            dq dqVar = oVar.f1878d;
            if (dqVar == null) {
                this.f1865d = new e();
            } else {
                this.f1865d = dqVar;
            }
        } else {
            this.f1865d = oVar.f1878d;
        }
        this.f1865d.dq(oVar, dq2);
        this.ox = oVar.dq;
        arrayList.add(oVar.o);
        kk.dq(oVar.iw);
        wp.dq(oVar.mn);
    }

    private void d() {
        if (this.iw) {
            kk.dq(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    public static o dq(com.bytedance.sdk.component.mp.dq dqVar) {
        return new o(dqVar);
    }

    public fw dq(String str, p.d dVar) {
        return dq(str, (String) null, dVar);
    }

    public fw dq(String str, s<?, ?> sVar) {
        return dq(str, (String) null, sVar);
    }

    @UiThread
    public fw dq(String str, String str2, p.d dVar) {
        d();
        this.f1865d.mn.dq(str, dVar);
        return this;
    }

    @UiThread
    public fw dq(String str, String str2, s<?, ?> sVar) {
        d();
        this.f1865d.mn.dq(str, sVar);
        return this;
    }

    public void dq() {
        if (this.iw) {
            return;
        }
        this.f1865d.d();
        this.iw = true;
        Iterator<q> it = this.s.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @AnyThread
    public <T> void dq(String str, T t) {
        d();
        this.f1865d.dq(str, (String) t);
    }
}
