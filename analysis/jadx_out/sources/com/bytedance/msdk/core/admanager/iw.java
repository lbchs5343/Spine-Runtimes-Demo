package com.bytedance.msdk.core.admanager;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ada;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f801d;
    private static final ArrayList<dq> dq = new ArrayList<>();
    private static final ArrayList<String> ox;
    private static final ArrayList<String> p;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        int f802d;
        String dq;
        String ox;

        public dq(String str, int i, String str2) {
            this.dq = str;
            this.f802d = i;
            this.ox = str2;
        }
    }

    static {
        String[] strArr = {"TTTransparentActivity", "openadsdk", "com.qq", "com.kwad", MediationConstant.ADN_BAIDU, "mbridge", MediationConstant.ADN_SIGMOB, MediationConstant.ADN_UNITY, MediationConstant.ADN_KLEVIN};
        f801d = strArr;
        ox = new ArrayList<>(Arrays.asList(strArr));
        p = new ArrayList<>();
    }

    public static boolean d(String str) {
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- activityStr: ".concat(String.valueOf(str)));
        Iterator<String> it = ox.iterator();
        while (it.hasNext()) {
            if (str.contains(it.next())) {
                return ox(str);
            }
        }
        return false;
    }

    private static boolean d(String str, String str2) {
        return ox(str, str2) >= 0;
    }

    public static void dq(String str) {
        ArrayList<String> arrayList;
        List asList;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                ox.clear();
                JSONArray optJSONArray = jSONObject.optJSONArray("act_str");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i);
                        if (!TextUtils.isEmpty(optString)) {
                            ox.add(optString);
                        }
                    }
                }
                p.clear();
                JSONArray optJSONArray2 = jSONObject.optJSONArray("not_act_str");
                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        String optString2 = optJSONArray2.optString(i2);
                        if (!TextUtils.isEmpty(optString2)) {
                            p.add(optString2);
                        }
                    }
                }
                dq.clear();
                JSONArray optJSONArray3 = jSONObject.optJSONArray("not_support");
                if (optJSONArray3 != null && optJSONArray3.length() > 0) {
                    for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                        JSONObject optJSONObject = optJSONArray3.optJSONObject(i3);
                        if (optJSONObject != null) {
                            dq.add(new dq(optJSONObject.optString("adn"), optJSONObject.optInt("subtype"), optJSONObject.optString("versions")));
                        }
                    }
                }
                arrayList = ox;
                asList = Arrays.asList(f801d);
            } catch (JSONException e2) {
                e2.printStackTrace();
                arrayList = ox;
                asList = Arrays.asList(f801d);
            }
            arrayList.addAll(asList);
        } catch (Throwable th) {
            ox.addAll(Arrays.asList(f801d));
            throw th;
        }
    }

    public static boolean dq(String str, int i, int i2) {
        ArrayList<dq> arrayList = dq;
        if (arrayList.size() <= 0) {
            return TextUtils.equals(MediationConstant.ADN_BAIDU, str);
        }
        Iterator<dq> it = arrayList.iterator();
        while (it.hasNext()) {
            dq next = it.next();
            if (next != null && TextUtils.equals(next.dq, str) && i2 == next.f802d) {
                String str2 = next.ox;
                com.bytedance.msdk.dq.dq.p dq2 = com.bytedance.msdk.iw.d.d.dq().dq(str);
                String d2 = dq2 != null ? dq2.d() : null;
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(d2)) {
                    if (str2.startsWith("<=")) {
                        return dq(d2, str2);
                    }
                    if (str2.startsWith(">=")) {
                        return d(d2, str2);
                    }
                }
            }
        }
        return false;
    }

    private static boolean dq(String str, String str2) {
        return ox(str, str2) <= 0;
    }

    private static int ox(String str, String str2) {
        String substring = str2.substring(2);
        if (str.startsWith(ada.COLUMN_VALUE) || str.startsWith("V")) {
            str = str.substring(1);
        }
        return str.compareTo(substring);
    }

    private static boolean ox(String str) {
        ArrayList<String> arrayList = p;
        if (arrayList.size() == 0) {
            return true;
        }
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            if (str.contains(it.next())) {
                return false;
            }
        }
        return true;
    }
}
