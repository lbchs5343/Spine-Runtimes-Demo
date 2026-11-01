package com.bytedance.sdk.component.adexpress.p;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

/* loaded from: classes.dex */
public class ox {
    public static Drawable dq(Context context, int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (context != null) {
            gradientDrawable.setStroke(i, i2);
        }
        gradientDrawable.setColor(i3);
        return gradientDrawable;
    }

    public static Drawable dq(Context context, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        if (context == null || mnVar == null) {
            return null;
        }
        return dq(context, (int) mn.dq(context, mnVar.fw()), mnVar.f(), mnVar.ji());
    }
}
