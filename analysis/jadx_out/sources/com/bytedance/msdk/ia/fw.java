package com.bytedance.msdk.ia;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class fw {

    /* renamed from: d, reason: collision with root package name */
    private static boolean f1087d = true;
    private static boolean dq = true;
    private static boolean iw = false;
    private static final Map<Integer, Map<String, List<List<String>>>> mn = new HashMap();
    private static boolean ox = true;
    private static boolean p = true;
    private static boolean s = true;

    public static boolean d() {
        if (!dq) {
            return false;
        }
        dq = false;
        return true;
    }

    public static boolean d(StackTraceElement[] stackTraceElementArr) {
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0 || (map = mn.get(8)) == null || (list = map.get(MediationConstant.ADN_PANGLE)) == null || list.size() <= 1) {
            return true;
        }
        return dq(stackTraceElementArr, list);
    }

    public static void dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                if (keys != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        JSONArray optJSONArray = jSONObject.optJSONArray(next);
                        if (optJSONArray != null) {
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                                Integer valueOf = Integer.valueOf(jSONObject2.optInt("rit_type"));
                                JSONArray optJSONArray2 = jSONObject2.optJSONArray("adn_features");
                                if (optJSONArray2 != null) {
                                    ArrayList arrayList = new ArrayList();
                                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                                        JSONArray jSONArray = optJSONArray2.getJSONArray(i2);
                                        if (jSONArray != null) {
                                            ArrayList arrayList2 = new ArrayList();
                                            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                                                String string = jSONArray.getString(i3);
                                                if (!TextUtils.isEmpty(string)) {
                                                    arrayList2.add(string);
                                                }
                                            }
                                            arrayList.add(arrayList2);
                                        }
                                    }
                                    if (arrayList.size() > 0) {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put(next, arrayList);
                                        mn.put(valueOf, hashMap);
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                com.bytedance.msdk.dq.s.ox.dq("TMe", "supervisorFeature error: " + e2.toString());
                e2.printStackTrace();
                return;
            }
        }
        com.bytedance.msdk.dq.s.ox.dq("TMe", "--==-- adn features:" + mn);
    }

    public static void dq(boolean z) {
        iw = z;
    }

    public static boolean dq() {
        return iw;
    }

    public static boolean dq(StackTraceElement[] stackTraceElementArr) {
        Map<String, List<List<String>>> map;
        List<List<String>> list;
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0 || (map = mn.get(7)) == null || (list = map.get(MediationConstant.ADN_PANGLE)) == null || list.size() <= 1) {
            return true;
        }
        return dq(stackTraceElementArr, list);
    }

    private static boolean dq(StackTraceElement[] stackTraceElementArr, int i, List<String> list) {
        int i2;
        for (int i3 = 0; i3 < list.size(); i3++) {
            String str = list.get(i3);
            if (TextUtils.isEmpty(str) || (i2 = i + i3) >= stackTraceElementArr.length) {
                return false;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i2];
            if (stackTraceElement != null) {
                String stackTraceElement2 = stackTraceElement.toString();
                if (TextUtils.isEmpty(stackTraceElement2) || !stackTraceElement2.contains(str)) {
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean dq(StackTraceElement[] stackTraceElementArr, List<List<String>> list) {
        for (List<String> list2 : list) {
            if (list2 != null && list2.size() > 0) {
                for (int i = 0; i < stackTraceElementArr.length; i++) {
                    StackTraceElement stackTraceElement = stackTraceElementArr[i];
                    if (stackTraceElement != null) {
                        String stackTraceElement2 = stackTraceElement.toString();
                        if (!TextUtils.isEmpty(stackTraceElement2) && stackTraceElement2.contains(list2.get(0)) && (list2.size() == 1 || dq(stackTraceElementArr, i, list2))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean iw() {
        if (!s) {
            return false;
        }
        s = false;
        return true;
    }

    public static boolean ox() {
        if (!f1087d) {
            return false;
        }
        f1087d = false;
        return true;
    }

    public static boolean p() {
        if (!ox) {
            return false;
        }
        ox = false;
        return true;
    }

    public static boolean s() {
        if (!p) {
            return false;
        }
        p = false;
        return true;
    }
}
