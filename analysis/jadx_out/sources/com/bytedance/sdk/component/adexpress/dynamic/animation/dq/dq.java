package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class dq extends p {
    public dq(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        float cd = this.f1683d.cd() / 100.0f;
        float gh = this.f1683d.gh() / 100.0f;
        if ("reverse".equals(this.f1683d.f()) && this.f1683d.q() <= 0.0d) {
            gh = cd;
            cd = gh;
        }
        this.ox.setAlpha(cd);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "alpha", cd, gh).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        return arrayList;
    }
}
