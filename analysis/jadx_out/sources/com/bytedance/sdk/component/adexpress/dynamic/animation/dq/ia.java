package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ia extends p {
    public ia(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    @SuppressLint({"ObjectAnimatorBinding"})
    public List<ObjectAnimator> dq() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "rippleValue", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration((int) (this.f1683d.o() * 1000.0d));
        ((ViewGroup) this.ox.getParent()).setClipChildren(false);
        ((ViewGroup) this.ox.getParent().getParent()).setClipChildren(false);
        ((ViewGroup) this.ox.getParent().getParent().getParent()).setClipChildren(false);
        this.ox.setTag(2097610712, this.f1683d.ia());
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        return arrayList;
    }
}
