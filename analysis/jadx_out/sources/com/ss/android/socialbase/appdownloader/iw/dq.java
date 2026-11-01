package com.ss.android.socialbase.appdownloader.iw;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.text.TextUtils;
import com.ss.android.socialbase.appdownloader.mn;
import java.lang.reflect.Field;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static final HashMap<String, mn.dq> dq = new HashMap<>();

    private static mn.dq d(String str) {
        HashMap<String, mn.dq> hashMap = dq;
        if (hashMap.containsKey(str)) {
            mn.dq dqVar = hashMap.get(str);
            if (dqVar != null) {
                return dqVar;
            }
            return null;
        }
        mn.dq d2 = mn.d(str);
        hashMap.put(str, d2);
        if (d2 != null) {
            return d2;
        }
        return null;
    }

    private static boolean d(JSONArray jSONArray, String str) {
        if (jSONArray != null && str != null) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                if (str.equalsIgnoreCase(jSONArray.optString(i).trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return true;
        }
        int i = Build.VERSION.SDK_INT;
        String optString = jSONObject.optString("allow_os_api_range");
        int optInt = jSONObject.optInt("min_os_api", -1);
        if (TextUtils.isEmpty(optString)) {
            return optInt <= 0 || i >= optInt;
        }
        try {
            String[] split = optString.split("[-,]");
            for (int i2 = 0; i2 < split.length; i2 += 2) {
                int parseInt = Integer.parseInt(split[i2]);
                int parseInt2 = Integer.parseInt(split[i2 + 1]);
                if (i >= parseInt && i <= parseInt2) {
                    return true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public static mn.dq dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                mn.dq d2 = d(str);
                if (d2 != null) {
                    return d2;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static boolean dq(JSONArray jSONArray) {
        int length;
        if (jSONArray == null || (length = jSONArray.length()) == 0) {
            return true;
        }
        boolean z = false;
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                String optString = optJSONObject.optString("package_names");
                JSONArray optJSONArray = optJSONObject.optJSONArray("version_allow");
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("version_block");
                String optString2 = optJSONObject.optString("allow_version_range");
                if (TextUtils.isEmpty(optString)) {
                    return false;
                }
                for (String str : optString.split(",")) {
                    if ("market".equals(str)) {
                        str = s.o();
                    }
                    mn.dq d2 = d(str);
                    if (d2 != null && !(z = dq(optJSONArray, optJSONArray2, optString2, d2))) {
                        return false;
                    }
                }
            }
        }
        return z;
    }

    public static boolean dq(JSONArray jSONArray, String str) {
        if (jSONArray != null && !TextUtils.isEmpty(str)) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null && str.equals(optJSONObject.optString("type")) && dq(optJSONObject)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean dq(JSONArray jSONArray, JSONArray jSONArray2, String str, mn.dq dqVar) {
        String mn = dqVar.mn();
        int iw = dqVar.iw();
        String str2 = iw + "_" + mn;
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split = str.split("[-,]");
                for (int i = 0; i < split.length; i += 2) {
                    int parseInt = Integer.parseInt(split[i]);
                    int parseInt2 = Integer.parseInt(split[i + 1]);
                    if (iw >= parseInt && iw <= parseInt2) {
                        return true;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if (jSONArray == null || jSONArray.length() <= 0) {
            if (jSONArray2 != null && jSONArray2.length() > 0 && !d(jSONArray2, str2)) {
                return true;
            }
        } else if (d(jSONArray, str2)) {
            return true;
        }
        return false;
    }

    public static boolean dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return d(jSONObject) && dq(jSONObject.optJSONArray("device_requirements")) && ox(jSONObject);
    }

    public static boolean dq(JSONObject jSONObject, Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null && jSONObject != null) {
            String optString = jSONObject.optString("s");
            try {
                String dq2 = ox.dq(jSONObject.optString("az"), optString);
                String dq3 = ox.dq(jSONObject.optString("ba"), optString);
                Field declaredField = ContextWrapper.class.getDeclaredField(dq2);
                declaredField.setAccessible(true);
                Object obj = declaredField.get(context);
                Field declaredField2 = obj.getClass().getDeclaredField(dq3);
                declaredField2.setAccessible(true);
                declaredField2.set(obj, str);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean ox(JSONObject jSONObject) {
        return jSONObject == null || iw.dq() || jSONObject.optInt("scy_mode") != 1;
    }
}
