package com.bytedance.sdk.openadsdk.core.mn;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;

/* loaded from: classes3.dex */
public class ox {
    public static String dq(String str) {
        String mp = wp.d().mp();
        return TextUtils.isEmpty(mp) ? "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/".concat(String.valueOf(str)) : awf.c(mp, str);
    }
}
