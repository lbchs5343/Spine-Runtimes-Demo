package com.bytedance.sdk.component.ia.d.dq.dq;

import android.text.TextUtils;
import android.util.Base64;

/* loaded from: classes.dex */
public class ox {
    public static String d(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(Base64.decode(str, 10));
    }

    public static String dq(String str) {
        return TextUtils.isEmpty(str) ? "" : Base64.encodeToString(str.getBytes(), 10);
    }
}
