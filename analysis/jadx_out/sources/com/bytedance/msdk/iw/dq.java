package com.bytedance.msdk.iw;

import android.text.TextUtils;
import com.bytedance.msdk.api.p.f;
import com.bytedance.msdk.api.p.o;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ada;

/* loaded from: classes.dex */
public class dq {
    private static final f dq = new f() { // from class: com.bytedance.msdk.iw.dq.1
        @Override // com.bytedance.msdk.api.p.f
        public void dq() {
            try {
                dq.p();
            } finally {
                try {
                } finally {
                }
            }
        }
    };

    private static void d(String str, String str2, String str3) {
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", str + "接入版本不符合, 要求版为：" + str2 + ".x，当前版本为：" + str3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean d(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.equals(MediationConstant.ADN_PANGLE)) {
                return true;
            }
            switch (str) {
                case "klevin":
                    if (!p("2.11.0.3", str2)) {
                        d("klevinAdapter", "2.11.0.3", str2);
                        break;
                    } else {
                        dq("klevinAdapter", "2.11.0.3", str2);
                        break;
                    }
                case "sigmob":
                    if (!p("4.19.5", str2)) {
                        d("sigmobAdapter", "4.19.5", str2);
                        break;
                    } else {
                        dq("sigmobAdapter", "4.19.5", str2);
                        break;
                    }
                case "ks":
                    if (!p("3.3.69", str2)) {
                        d("ksAdapter", "3.3.69", str2);
                        break;
                    } else {
                        dq("ksAdapter", "3.3.69", str2);
                        break;
                    }
                case "gdt":
                    if (com.bytedance.msdk.core.dq.dq.dq.d(MediationConstant.ADN_GDT) == null) {
                        if (!p("4.610.1480", str2)) {
                            d("gdtAdapter", "4.610.1480", str2);
                            break;
                        } else {
                            dq("gdtAdapter", "4.610.1480", str2);
                            break;
                        }
                    }
                    break;
                case "admob":
                    if (!p("17.2.0", str2)) {
                        d("admobAdapter", "17.2.0", str2);
                        break;
                    } else {
                        dq("admobAdapter", "17.2.0", str2);
                        break;
                    }
                case "baidu":
                    if (!p("9.37", str2)) {
                        d("baiduAdapter", "9.37", str2);
                        break;
                    } else {
                        dq("baiduAdapter", "9.37", str2);
                        break;
                    }
                case "unity":
                    if (!p("4.3.0", str2)) {
                        d("unityAdapter", "4.3.0", str2);
                        break;
                    } else {
                        dq("unityAdapter", "4.3.0", str2);
                        break;
                    }
                case "mintegral":
                    if (!p("16.6.57", str2)) {
                        d("mtgAdapter", "16.6.57", str2);
                        break;
                    } else {
                        dq("mtgAdapter", "16.6.57", str2);
                        break;
                    }
            }
            return true;
        }
        return false;
    }

    public static void dq() {
        try {
            if (com.bytedance.msdk.dq.s.ox.d() && o.dq()) {
                p();
            }
        } catch (Throwable unused) {
        }
    }

    private static void dq(String str, String str2, String str3) {
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_InitChecker", str + "接入版本正常, 要求版为：" + str2 + "，当前版本为：" + str3);
    }

    public static boolean dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (!str.equals(MediationConstant.ADN_BAIDU) && !str.equals(MediationConstant.ADN_ADMOB) && !str.equals(MediationConstant.ADN_PANGLE)) {
            switch (str) {
                case "klevin":
                    if (ox(str2, "2.11.0.3") == 0) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_InitChecker", "klevin版本正常, 要求版本等于2.11.0.3，当前是" + str2);
                        break;
                    } else {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", "klevin版本不符合, 要求版本等于2.11.0.3，当前是" + str2);
                        return false;
                    }
                case "sigmob":
                    if (ox(str2, "4.19.5") != 0) {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", "sigmob版本不符合, 要求版本等于4.19.5，当前是" + str2);
                        return false;
                    }
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_InitChecker", "sigmob版本正常, 要求版本等于4.19.5，当前是" + str2);
                    return true;
                case "ks":
                    if (ox(str2, "3.3.69") != 0) {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", "快手版本不符合, 要求版本等于3.3.69，当前是" + str2);
                        return false;
                    }
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_InitChecker", "快手版本正常, 要求版本等于3.3.69，当前是" + str2);
                    return true;
                case "gdt":
                    if (ox(str2, "4.610.1480") != 0) {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", "gdt版本不符合，要求等于4.610.1480，当前是" + str2);
                        return false;
                    }
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_InitChecker", "gdt版本正常，要求等于4.610.1480，当前是" + str2);
                    return true;
                case "unity":
                    if (ox(str2, "4.3.0") != 0) {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", "unity版本不符合，要求等于4.3.0，当前是" + str2);
                        return false;
                    }
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_InitChecker", "unity版本正常，要求等于4.3.0，当前是" + str2);
                    return true;
                case "mintegral":
                    if (!TextUtils.isEmpty(str2) && str2.contains("16.6.57")) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_InitChecker", "Mintegral版本正常, 要求版本等于16.6.57，当前是".concat(str2));
                        return true;
                    }
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_InitChecker", "Mintegral版本不符合, 要求版本等于16.6.57，当前是" + str2);
                    return false;
                default:
                    return false;
            }
        }
        return true;
    }

    private static int ox(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            return 1;
        }
        if (str.startsWith(ada.COLUMN_VALUE) || str.startsWith("V")) {
            str = str.substring(1);
        }
        if (str2.startsWith(ada.COLUMN_VALUE) || str2.startsWith("V")) {
            str2 = str2.substring(1);
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int min = Math.min(split.length, split2.length);
        for (int i = 0; i < min; i++) {
            if (split[i].length() != split2[i].length()) {
                return split[i].length() > split2[i].length() ? 1 : -1;
            }
            int compareTo = split[i].compareTo(split2[i]);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (split.length == split2.length) {
            return 0;
        }
        return split.length > split2.length ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void p() {
        synchronized (dq.class) {
            if (com.bytedance.msdk.core.dq.getContext() == null) {
                return;
            }
            com.bytedance.msdk.mn.dq.dq.jy().dq();
        }
    }

    private static boolean p(String str, String str2) {
        if (str == null || str2 == null || str.length() == 0 || str2.length() == 0 || str.length() > str2.length()) {
            return false;
        }
        if (str.startsWith(ada.COLUMN_VALUE) || str.startsWith("V")) {
            str = str.substring(1);
        }
        if (str2.startsWith(ada.COLUMN_VALUE) || str2.startsWith("V")) {
            str2 = str2.substring(1);
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        for (int i = 0; i < split.length; i++) {
            if (split[i].length() == split[i].length() && split[i].compareTo(split2[i]) != 0) {
                return false;
            }
        }
        return true;
    }
}
