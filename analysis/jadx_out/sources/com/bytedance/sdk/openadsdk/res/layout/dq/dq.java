package com.bytedance.sdk.openadsdk.res.layout.dq;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class dq implements com.bytedance.sdk.openadsdk.res.layout.dq {
    @Override // com.bytedance.sdk.openadsdk.res.layout.dq
    public View dq(Context context) {
        Button button = new Button(context);
        button.setId(2114387734);
        button.setLayoutParams(new ViewGroup.LayoutParams(-1, ce.ox(context, 48.0f)));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#2A90D7"));
        button.setBackground(gradientDrawable);
        button.setText(r.dq(context, "tt_download"));
        button.setTextColor(Color.parseColor("#ffffff"));
        button.setTextSize(2, 16.0f);
        return button;
    }
}
