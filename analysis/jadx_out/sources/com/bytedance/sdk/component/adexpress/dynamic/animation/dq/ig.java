package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ig extends p {
    public ig(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    @SuppressLint({"ObjectAnimatorBinding"})
    public List<ObjectAnimator> dq() {
        int i;
        int i2;
        this.ox.setTag(2097610711, Integer.valueOf(this.f1683d.p()));
        View view = this.ox;
        if (view == null || !com.bytedance.sdk.component.adexpress.p.d.dq(view.getContext())) {
            i = 0;
            i2 = 1;
        } else {
            i = 1;
            i2 = 0;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "shineValue", i, i2).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        return arrayList;
    }
}
