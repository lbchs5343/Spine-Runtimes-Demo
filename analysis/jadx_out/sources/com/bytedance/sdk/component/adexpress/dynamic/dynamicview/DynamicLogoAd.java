package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.p.no;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes.dex */
public class DynamicLogoAd extends DynamicBaseWidgetImp {
    public DynamicLogoAd(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        TextView textView = new TextView(context);
        this.jy = textView;
        textView.setTag(Integer.valueOf(getClickArea()));
        addView(this.jy, getWidgetLayoutParams());
    }

    private boolean kk() {
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.ig.f1762d) && this.ig.f1762d.contains("adx:")) || no.d();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        this.jy.setTextAlignment(this.ig.ia());
        ((TextView) this.jy).setTextColor(this.ig.mn());
        ((TextView) this.jy).setTextSize(this.ig.s());
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            ((TextView) this.jy).setIncludeFontPadding(false);
            ((TextView) this.jy).setTextSize(Math.min(((mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), this.ia) - this.ig.d()) - this.ig.dq()) - 0.5f, this.ig.s()));
            ((TextView) this.jy).setText(r.dq(getContext(), "tt_logo_en"));
            return true;
        }
        if (!kk()) {
            ((TextView) this.jy).setText(r.d(getContext(), "tt_logo_cn"));
            return true;
        }
        if (no.d()) {
            ((TextView) this.jy).setText(no.dq());
            return true;
        }
        ((TextView) this.jy).setText(no.dq(this.ig.f1762d));
        return true;
    }
}
