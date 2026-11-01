package com.bytedance.sdk.openadsdk.core.component.reward.s;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.iw;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class dq {
    public static String dq(String str) {
        if (!ig.ox() || TextUtils.isEmpty(str)) {
            return str;
        }
        iw iwVar = new iw(no.ia().gh());
        StringBuilder sb = new StringBuilder(str);
        Iterator<String> it = iwVar.d().iterator();
        while (it.hasNext()) {
            if (sb.toString().contains(it.next())) {
                if (sb.toString().contains("?")) {
                    sb.append("&");
                    sb.append(iwVar.dq());
                } else {
                    sb.append("?");
                    sb.append(iwVar.dq());
                }
            }
        }
        return sb.toString();
    }
}
