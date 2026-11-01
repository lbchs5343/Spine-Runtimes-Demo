package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class d implements com.bytedance.sdk.component.adexpress.dynamic.dynamicview.s {
    List<p> dq = new ArrayList();

    public d(View view, List<com.bytedance.sdk.component.adexpress.dynamic.ox.dq> list) {
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ox.dq> it = list.iterator();
        while (it.hasNext()) {
            p dq = ox.dq().dq(view, it.next());
            if (dq != null) {
                this.dq.add(dq);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.s
    public void d() {
        Iterator<p> it = this.dq.iterator();
        while (it.hasNext()) {
            try {
                it.next().d();
            } catch (Exception unused) {
            }
        }
    }

    public void dq() {
        Iterator<p> it = this.dq.iterator();
        while (it.hasNext()) {
            try {
                it.next().ox();
            } catch (Exception unused) {
            }
        }
    }
}
