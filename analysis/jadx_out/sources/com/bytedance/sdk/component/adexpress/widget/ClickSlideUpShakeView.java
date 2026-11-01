package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ClickSlideUpShakeView extends SlideUpView {
    private ShakeClickView dq;

    public ClickSlideUpShakeView(Context context, int i, int i2, int i3, JSONObject jSONObject, boolean z) {
        super(context);
        dq(context, i, i2, i3, jSONObject, z);
    }

    private void dq(Context context, int i, int i2, int i3, JSONObject jSONObject, boolean z) {
        ShakeClickView shakeClickView = new ShakeClickView(context, com.bytedance.sdk.component.adexpress.ox.dq.ox(context), i, i2, i3, jSONObject, z);
        this.dq = shakeClickView;
        addView(shakeClickView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        this.dq.setLayoutParams(layoutParams);
    }

    public ShakeClickView getShakeView() {
        return this.dq;
    }

    public void setShakeText(String str) {
        if (this.dq == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.dq.setShakeText("");
        } else {
            this.dq.setShakeText(str);
        }
    }
}
