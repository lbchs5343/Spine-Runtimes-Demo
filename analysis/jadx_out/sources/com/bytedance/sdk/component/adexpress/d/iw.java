package com.bytedance.sdk.component.adexpress.d;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.d.o;

/* loaded from: classes.dex */
public class iw implements o {

    /* renamed from: d, reason: collision with root package name */
    private dq f1659d;
    private Context dq;
    private mp ox;

    public iw(Context context, mp mpVar, dq dqVar) {
        this.dq = context;
        this.f1659d = dqVar;
        this.ox = mpVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public void dq() {
    }

    public void dq(ox oxVar) {
        this.f1659d.dq(oxVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.d.o
    public boolean dq(final o.dq dqVar) {
        this.ox.s().kk();
        this.f1659d.dq(new mn() { // from class: com.bytedance.sdk.component.adexpress.d.iw.1
            @Override // com.bytedance.sdk.component.adexpress.d.mn
            public void dq(int i, String str) {
                jy d2 = dqVar.d();
                if (d2 != null) {
                    d2.a_(i);
                }
            }

            @Override // com.bytedance.sdk.component.adexpress.d.mn
            public void dq(View view, q qVar) {
                if (dqVar.ox()) {
                    return;
                }
                jy d2 = dqVar.d();
                if (d2 != null) {
                    d2.dq(iw.this.f1659d, qVar);
                }
                dqVar.dq(true);
            }
        });
        return true;
    }
}
