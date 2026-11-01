package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class iw extends p {
    public iw(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        float f2 = this.ox.getLayoutParams().width;
        this.ox.setTranslationX(f2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "translationX", f2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration((int) (this.f1683d.o() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.ox, "alpha", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        arrayList.add(dq(duration2));
        return arrayList;
    }
}
