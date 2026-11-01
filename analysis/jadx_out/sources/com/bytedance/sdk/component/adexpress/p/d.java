package com.bytedance.sdk.component.adexpress.p;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class d {
    public static boolean dq(Context context) {
        return context != null && TextUtils.getLayoutDirectionFromLocale(context.getResources().getConfiguration().locale) == 1 && (context.getApplicationInfo().flags & 4194304) == 4194304;
    }
}
