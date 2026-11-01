package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class mn extends p {
    public mn(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    @SuppressLint({"ObjectAnimatorBinding"})
    public List<ObjectAnimator> dq() {
        this.ox.setTag(2097610709, Integer.valueOf(this.f1683d.ox()));
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "marqueeValue", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        return arrayList;
    }
}
