package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class mp extends p {
    public mp(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        View view = this.ox;
        if ((view instanceof ImageView) && (view.getParent() instanceof DynamicImageView)) {
            View view2 = (View) this.ox.getParent();
            this.ox = view2;
            ((ViewGroup) view2).setClipChildren(true);
            ((ViewGroup) this.ox.getParent()).setClipChildren(true);
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "stretchValue", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        return arrayList;
    }
}
