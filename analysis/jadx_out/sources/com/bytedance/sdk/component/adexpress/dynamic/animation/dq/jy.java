package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class jy extends p {
    public jy(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        float f2;
        float dq = com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.f1683d.iw());
        float dq2 = com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.f1683d.mn());
        boolean equals = "reverse".equals(this.f1683d.f());
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (equals) {
            f3 = dq;
            f2 = dq2;
            dq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            dq2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        } else {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        if (com.bytedance.sdk.component.adexpress.p.d.dq(this.ox.getContext())) {
            dq = -dq;
            f3 = -f3;
        }
        this.ox.setTranslationX(dq);
        this.ox.setTranslationY(dq2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "translationX", dq, f3).setDuration((int) (this.f1683d.o() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.ox, "translationY", dq2, f2).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        arrayList.add(dq(duration2));
        return arrayList;
    }
}
