package com.bytedance.sdk.component.no.ia;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class dq {
    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt >= 'A' && charAt <= 'Z') {
                    if (sb.length() > 0) {
                        sb.append('_');
                    }
                    sb.append((char) (charAt + ' '));
                }
                sb.append(charAt);
            }
            return sb.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String dq(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (z) {
            str = str.substring(1);
        }
        return dq(str);
    }
}
