package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShakeClickView extends ShakeAnimationView {
    private TextView dq;

    public ShakeClickView(Context context, View view, int i, int i2, int i3, JSONObject jSONObject, boolean z) {
        super(context, view, i, i2, i3, jSONObject, z);
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView
    public void dq(Context context, View view) {
        addView(view);
        this.dq = (TextView) findViewById(2097610747);
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView
    public void setShakeText(String str) {
        if (this.dq == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.dq.setText(str);
            return;
        }
        try {
            this.dq.setText(r.d(this.dq.getContext(), "tt_splash_default_click_shake"));
        } catch (Exception e2) {
            ig.p("shakeClickView", e2.getMessage());
        }
    }
}
