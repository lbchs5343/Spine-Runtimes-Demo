package com.bytedance.sdk.component.adexpress.dynamic.p;

import android.text.TextUtils;
import g.awf;

/* loaded from: classes.dex */
public class dq {
    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/images/");
        if (str.indexOf(".") <= 0) {
            return awf.ad(sb, str, ".png");
        }
        sb.append(str);
        return sb.toString();
    }
}
