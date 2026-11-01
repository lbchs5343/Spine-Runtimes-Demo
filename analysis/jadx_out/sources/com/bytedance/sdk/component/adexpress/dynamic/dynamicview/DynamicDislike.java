package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.adexpress.widget.DislikeView;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicDislike extends DynamicBaseWidgetImp {
    public DynamicDislike(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            this.jy = new ImageView(context);
        } else {
            this.jy = new DislikeView(context);
        }
        this.jy.setTag(3);
        addView(this.jy, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.jy);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            Drawable dq = com.bytedance.sdk.component.adexpress.p.ox.dq(getContext(), this.ig);
            if (dq != null) {
                this.jy.setBackground(dq);
            }
            int s = r.s(getContext(), "tt_close_btn");
            if (s > 0) {
                ((ImageView) this.jy).setImageResource(s);
            }
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        int dq2 = (int) mn.dq(this.no, this.ig.fw());
        View view = this.jy;
        if (view instanceof DislikeView) {
            ((DislikeView) view).setRadius((int) mn.dq(this.no, this.ig.jy()));
            ((DislikeView) this.jy).setStrokeWidth(dq2);
            ((DislikeView) this.jy).setStrokeColor(this.ig.f());
            ((DislikeView) this.jy).setBgColor(this.ig.ji());
            ((DislikeView) this.jy).setDislikeColor(this.ig.mn());
            ((DislikeView) this.jy).setDislikeWidth((int) mn.dq(this.no, 1.0f));
        }
        return true;
    }
}
