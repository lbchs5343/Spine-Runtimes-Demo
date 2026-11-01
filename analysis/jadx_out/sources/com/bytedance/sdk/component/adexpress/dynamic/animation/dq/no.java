package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class no extends p {
    public no(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        super(view, dqVar);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 == null || !(viewGroup2 instanceof DynamicBaseWidget)) {
                return;
            }
            viewGroup2.setClipChildren(false);
            viewGroup2.setClipToPadding(false);
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 == null || !(viewGroup3 instanceof DynamicBaseWidget)) {
                return;
            }
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.dq.p
    public List<ObjectAnimator> dq() {
        float f2;
        float no = (float) this.f1683d.no();
        float ig = (float) this.f1683d.ig();
        String f3 = this.f1683d.f();
        float f4 = 1.0f;
        if ("reverse".equals(f3) || "alternate-reverse".equals(f3)) {
            f2 = 1.0f;
        } else {
            f4 = no;
            f2 = ig;
            no = 1.0f;
            ig = 1.0f;
        }
        this.ox.setTag(2097610710, this.f1683d.d());
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ox, "scaleX", no, f4).setDuration((int) (this.f1683d.o() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.ox, "scaleY", ig, f2).setDuration((int) (this.f1683d.o() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq(duration));
        arrayList.add(dq(duration2));
        return arrayList;
    }
}
