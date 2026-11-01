package com.bytedance.sdk.openadsdk.core.d.dq;

import android.view.View;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.r.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox {
    private final com.bytedance.sdk.openadsdk.core.d.p mn;
    private o ox;
    private View p;
    private volatile int s;
    private List<dq> dq = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f2795d = new HashMap();
    private volatile int iw = 0;

    public ox(com.bytedance.sdk.openadsdk.core.d.p pVar) {
        this.mn = pVar;
    }

    private void d() {
        this.s = 0;
        this.iw = 0;
    }

    private void d(int i) {
        int size = this.dq.size();
        while (i < size) {
            int i2 = i + 1;
            this.s = i2;
            dq dqVar = this.dq.get(i);
            dqVar.dq(this.p);
            this.iw = dqVar.dq(this.f2795d, this);
            if (this.iw != 0) {
                if (this.iw == 2) {
                    ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.mn.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(this.f2795d, this);
                    return;
                }
                return;
            }
            i = i2;
        }
    }

    public void dq() {
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.mn.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(false);
        d();
        d(0);
    }

    public void dq(int i) {
        this.iw = i;
        if (this.iw == 0) {
            d(this.s);
        } else {
            if (this.iw == 1) {
                this.s = 0;
                return;
            }
            ig.d("ClickHandlerChain", "continueHandle fail for state = " + this.iw);
        }
    }

    public void dq(View view) {
        this.p = view;
    }

    public void dq(dq dqVar) {
        this.dq.add(dqVar);
    }

    public void dq(o oVar) {
        this.ox = oVar;
        Iterator<dq> it = this.dq.iterator();
        while (it.hasNext()) {
            it.next().dq(this.ox);
        }
    }
}
