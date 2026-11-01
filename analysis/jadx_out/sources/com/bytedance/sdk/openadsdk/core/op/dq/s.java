package com.bytedance.sdk.openadsdk.core.op.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.i;
import g.awf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public class s {
    private static final List<String> dq = new ArrayList(Arrays.asList("1", "3", "2"));

    public static String dq() {
        String f2 = i.f();
        String cd = i.cd();
        String fw = i.fw();
        String gh = i.gh();
        if (!i.jy()) {
            return "5";
        }
        if (TextUtils.isEmpty(f2) || TextUtils.isEmpty(cd)) {
            return (TextUtils.isEmpty(fw) || TextUtils.isEmpty(gh)) ? "4" : dq(awf.c(fw, gh));
        }
        if (TextUtils.isEmpty(fw) || TextUtils.isEmpty(gh)) {
            return dq(awf.c(f2, cd));
        }
        String dq2 = dq(awf.c(f2, cd));
        String dq3 = dq(awf.c(fw, gh));
        List<String> list = dq;
        return (list.contains(dq2) && list.contains(dq3) && !dq3.equals(dq2)) ? "6" : list.contains(dq2) ? dq2 : list.contains(dq3) ? dq3 : "0";
    }

    private static String dq(String str) {
        str.getClass();
        switch (str) {
            case "46000":
            case "46002":
            case "46004":
            case "46007":
            case "46008":
                return "1";
            case "46001":
            case "46006":
            case "46009":
                return "2";
            case "46003":
            case "46005":
            case "46011":
                return "3";
            default:
                return "0";
        }
    }
}
