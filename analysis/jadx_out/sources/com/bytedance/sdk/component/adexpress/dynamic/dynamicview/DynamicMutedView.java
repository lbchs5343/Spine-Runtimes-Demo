package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicMutedView extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.d {
    public DynamicMutedView(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        ImageView imageView = new ImageView(context);
        this.jy = imageView;
        imageView.setTag(5);
        addView(this.jy, getWidgetLayoutParams());
        dynamicRootView.setMuteListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().kx()) {
            return;
        }
        this.jy.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            ((ImageView) this.jy).setScaleType(ImageView.ScaleType.CENTER);
        }
        setSoundMute(this.q.f1716d);
        if (!com.bytedance.sdk.component.adexpress.p.dq()) {
            ((ImageView) this.jy).setBackgroundDrawable(com.bytedance.sdk.component.adexpress.p.ia.dq(0, Integer.valueOf(this.ig.ji()), new int[]{this.ia / 2}, null, null, null));
            return true;
        }
        Drawable dq = com.bytedance.sdk.component.adexpress.p.ox.dq(getContext(), this.ig);
        if (dq == null) {
            return true;
        }
        ((ImageView) this.jy).setBackground(dq);
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public boolean p() {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void setSoundMute(boolean z) {
        ((ImageView) this.jy).setImageResource(com.bytedance.sdk.component.adexpress.p.dq() ? z ? r.s(getContext(), "tt_reward_full_mute") : r.s(getContext(), "tt_reward_full_unmute") : z ? r.s(getContext(), "tt_mute") : r.s(getContext(), "tt_unmute"));
        if (((ImageView) this.jy).getDrawable() != null) {
            ((ImageView) this.jy).getDrawable().setAutoMirrored(true);
        }
    }
}
