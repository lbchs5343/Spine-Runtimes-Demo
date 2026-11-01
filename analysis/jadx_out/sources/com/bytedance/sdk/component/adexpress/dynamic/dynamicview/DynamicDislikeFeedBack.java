package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicDislikeFeedBack extends DynamicBaseWidgetImp {
    public DynamicDislikeFeedBack(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            ImageView imageView = new ImageView(context);
            this.jy = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.mn = this.ia;
        } else {
            this.jy = new TextView(context);
        }
        this.jy.setTag(3);
        addView(this.jy, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.jy);
        if (dynamicRootView.getRenderRequest() != null) {
            if (dynamicRootView.getRenderRequest().kk() && dynamicRootView.getRenderRequest().kx()) {
                return;
            }
            this.jy.setVisibility(8);
            setVisibility(8);
        }
    }

    public String getText() {
        return r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_reward_feedback");
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            Drawable dq = com.bytedance.sdk.component.adexpress.p.ox.dq(getContext(), this.ig);
            if (dq != null) {
                ((ImageView) this.jy).setBackground(dq);
            }
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int s = r.s(getContext(), "tt_reward_full_feedback");
            if (s > 0) {
                ((ImageView) this.jy).setImageResource(s);
            }
            return true;
        }
        ((TextView) this.jy).setText(getText());
        this.jy.setTextAlignment(this.ig.ia());
        ((TextView) this.jy).setTextColor(this.ig.mn());
        ((TextView) this.jy).setTextSize(this.ig.s());
        this.jy.setBackground(getBackgroundDrawable());
        if (this.ig.le()) {
            int k = this.ig.k();
            if (k > 0) {
                ((TextView) this.jy).setLines(k);
                ((TextView) this.jy).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.jy).setMaxLines(1);
            ((TextView) this.jy).setGravity(17);
            ((TextView) this.jy).setEllipsize(TextUtils.TruncateAt.END);
        }
        this.jy.setPadding((int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.ox()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.d()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.p()), (int) mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), this.ig.dq()));
        ((TextView) this.jy).setGravity(17);
        return true;
    }
}
