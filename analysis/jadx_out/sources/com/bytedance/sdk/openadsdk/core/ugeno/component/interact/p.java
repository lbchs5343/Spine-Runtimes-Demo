package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kx;

/* loaded from: classes3.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    s f3568d;
    j dq;
    iw ox;
    ox p;

    public p(j jVar, dq dqVar) {
        this.dq = jVar;
        ox oxVar = new ox(jVar);
        this.p = oxVar;
        this.f3568d = new s(this.dq, dqVar, oxVar);
        this.ox = new iw(this.dq, dqVar, this.p);
    }

    private void d(ViewGroup viewGroup, ViewGroup viewGroup2) {
        if (viewGroup != null) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if ("easy_pfwv".equals(childAt.getTag())) {
                    viewGroup.removeView(childAt);
                    this.f3568d.p();
                    this.ox.p();
                }
            }
        }
        if (viewGroup2 != null) {
            for (int i2 = 0; i2 < viewGroup2.getChildCount(); i2++) {
                View childAt2 = viewGroup2.getChildAt(i2);
                if ("easy_pfwv".equals(childAt2.getTag())) {
                    viewGroup2.removeView(childAt2);
                    this.f3568d.p();
                    this.ox.p();
                }
            }
        }
    }

    private boolean dq(boolean z) {
        int ia = c.ia(this.dq);
        if (ia == 5 || ia == 9) {
            return true;
        }
        return (ia == 3 || ia == 4) ? z : ia == 7 || ia == 8;
    }

    public void d() {
        this.f3568d.p();
        this.ox.p();
    }

    public mn dq() {
        return this.f3568d.ox() ? this.f3568d.d() : this.ox.ox() ? this.ox.d() : new mn() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.p.1
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void dq() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void dq(boolean z) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void ox() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void p() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public boolean s() {
                return false;
            }
        };
    }

    public void dq(ViewGroup viewGroup, ViewGroup viewGroup2) {
        d(viewGroup, viewGroup2);
        if ((viewGroup instanceof FrameLayout) || (viewGroup instanceof RelativeLayout)) {
            if (this.f3568d.ox()) {
                int d2 = kx.iw(this.dq).d();
                boolean z = d2 == 0 || d2 == 2;
                if (dq(true)) {
                    this.p.dq(this.f3568d.dq(), z);
                    s sVar = this.f3568d;
                    if (z) {
                        viewGroup2 = viewGroup;
                    }
                    sVar.dq(viewGroup, viewGroup2, true);
                    return;
                }
                return;
            }
            if (this.ox.ox()) {
                int d3 = kx.s(this.dq).d();
                boolean z2 = d3 == 0 || d3 == 2;
                if (dq(false)) {
                    this.p.dq(this.ox.dq(), z2);
                    iw iwVar = this.ox;
                    if (z2) {
                        viewGroup2 = viewGroup;
                    }
                    iwVar.dq(viewGroup, viewGroup2, d3 != 2);
                }
            }
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
        iw iwVar = this.ox;
        if (iwVar != null) {
            iwVar.dq(dVar);
        }
    }
}
