package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.AnimationButton;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;

/* loaded from: classes.dex */
public class DynamicButton extends DynamicBaseWidgetImp {
    public DynamicButton(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        AnimationButton animationButton = new AnimationButton(context);
        this.jy = animationButton;
        animationButton.setTag(Integer.valueOf(getClickArea()));
        addView(this.jy, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (!com.bytedance.sdk.component.adexpress.p.dq() || !"fillButton".equals(this.mp.o().getType())) {
            return super.getWidgetLayoutParams();
        }
        ((TextView) this.jy).setEllipsize(TextUtils.TruncateAt.END);
        ((TextView) this.jy).setMaxLines(1);
        FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
        widgetLayoutParams.width -= this.ig.cd() * 2;
        widgetLayoutParams.height -= this.ig.cd() * 2;
        widgetLayoutParams.topMargin = this.ig.cd() + widgetLayoutParams.topMargin;
        int cd = this.ig.cd() + widgetLayoutParams.leftMargin;
        widgetLayoutParams.leftMargin = cd;
        widgetLayoutParams.setMarginStart(cd);
        widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
        return widgetLayoutParams;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        if (TextUtils.equals("download-progress-button", this.mp.o().getType()) && TextUtils.isEmpty(this.ig.o())) {
            this.jy.setVisibility(4);
            return true;
        }
        this.jy.setTextAlignment(this.ig.ia());
        ((TextView) this.jy).setText(this.ig.o());
        ((TextView) this.jy).setTextColor(this.ig.mn());
        ((TextView) this.jy).setTextSize(this.ig.s());
        ((TextView) this.jy).setGravity(17);
        ((TextView) this.jy).setIncludeFontPadding(false);
        if ("fillButton".equals(this.mp.o().getType())) {
            this.jy.setPadding(0, 0, 0, 0);
        } else {
            this.jy.setPadding(this.ig.ox(), this.ig.d(), this.ig.p(), this.ig.dq());
        }
        return true;
    }
}
