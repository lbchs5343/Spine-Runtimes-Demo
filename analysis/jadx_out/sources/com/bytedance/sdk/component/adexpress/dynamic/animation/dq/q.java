package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class q extends p {
    public q(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "rotation", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.f1683d.s(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.f1683d.s(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        return arrayList;
    }
}
