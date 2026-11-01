package com.bytedance.sdk.openadsdk.core.ir;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.net.URL;
import java.net.URLEncoder;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ji {
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String dq(j jVar, String str, String str2) throws Exception {
        String str3;
        int i;
        if (jVar == null || str == null || !str.contains(str2)) {
            return str;
        }
        Pair<Integer, JSONObject> dq = com.bytedance.sdk.openadsdk.core.ox.iw.dq().dq(jVar.dn(), false);
        str3 = "";
        if (dq != null) {
            Object obj = dq.second;
            str3 = obj != null ? ((JSONObject) obj).optString("message") : "";
            Object obj2 = dq.first;
            if (obj2 != null) {
                i = ((Integer) obj2).intValue();
                if (i != 3) {
                    try {
                        str = TextUtils.isEmpty(new URL(str).getQuery()) ? str.concat("?abort_aes=1") : str.concat("&abort_aes=1");
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                return str.replace(str2, URLEncoder.encode(str3, "UTF-8"));
            }
        }
        i = 3;
        if (i != 3) {
        }
        return str.replace(str2, URLEncoder.encode(str3, "UTF-8"));
    }

    public static void dq(final j jVar, final Double d2) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("win") { // from class: com.bytedance.sdk.openadsdk.core.ir.ji.1
                @Override // java.lang.Runnable
                public void run() {
                    ji.ox(jVar, d2);
                }
            });
        } else {
            ox(jVar, d2);
        }
    }

    public static void dq(final j jVar, final Double d2, final String str, final String str2) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("loss") { // from class: com.bytedance.sdk.openadsdk.core.ir.ji.2
                @Override // java.lang.Runnable
                public void run() {
                    ji.ox(jVar, d2, str, str2);
                }
            });
        } else {
            ox(jVar, d2, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(j jVar, Double d2) {
        if (jVar == null || jVar.ps() == null) {
            return;
        }
        try {
            Object obj = jVar.ps().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String str = (String) jVar.ps().get("nurl");
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (d2 != null) {
                    str = str.replace("${AUCTION_BID_TO_WIN}", String.valueOf(d2));
                }
                com.bytedance.sdk.openadsdk.core.wp.dq().dq(dq(jVar, str, "${AUCTION_EXT}"));
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(j jVar, Double d2, String str, String str2) {
        if (jVar == null || jVar.ps() == null) {
            return;
        }
        try {
            Object obj = jVar.ps().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String str3 = (String) jVar.ps().get("lurl");
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                if (d2 != null) {
                    str3 = str3.replace("${AUCTION_PRICE}", String.valueOf(d2));
                }
                if (str != null) {
                    str3 = str3.replace("${AUCTION_LOSS}", str);
                }
                if (str2 != null) {
                    str3 = str3.replace("${AUCTION_WINNER}", str2);
                }
                com.bytedance.sdk.openadsdk.core.wp.dq().dq(dq(jVar, str3, "${AUCTION_EXT}"));
            }
        } catch (Throwable unused) {
        }
    }
}
