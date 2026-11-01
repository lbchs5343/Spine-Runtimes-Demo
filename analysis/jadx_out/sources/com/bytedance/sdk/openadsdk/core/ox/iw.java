package com.bytedance.sdk.openadsdk.core.ox;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.bytedance.sdk.component.panglearmor.kk;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw {
    private static volatile iw dq;

    private Pair<Integer, JSONObject> d(String str, boolean z) {
        JSONObject s = (TextUtils.isEmpty(str) || !kk.d()) ? null : s(str);
        if (s != null && !TextUtils.isEmpty(s.optString("message"))) {
            return new Pair<>(4, s);
        }
        if (kk.d() && z) {
            ig.dq().dq(3, -1L, (String) null);
        }
        return iw(str);
    }

    private static String d(byte[] bArr, String str) {
        int i;
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    byte[] d2 = kk.dq().d(bArr);
                    String d3 = com.bytedance.sdk.openadsdk.core.ir.ig.d(d2);
                    if (!TextUtils.isEmpty(d3)) {
                        return d3;
                    }
                    ig dq2 = ig.dq();
                    if (d2 != null && d2.length != 0) {
                        i = 2;
                        dq2.dq(i, -1L, str);
                        return null;
                    }
                    i = 1;
                    dq2.dq(i, -1L, str);
                    return null;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static Pair<Boolean, JSONObject> dq(com.bytedance.sdk.component.kk.d dVar, String str, boolean z) {
        if (com.bytedance.sdk.component.kk.p.dq.dq(dVar.ox())) {
            return new Pair<>(Boolean.FALSE, dq(dVar.o(), str));
        }
        String p = dVar.p();
        if (p != null && !p.startsWith("{") && !p.endsWith("}") && !p.contains("message") && !p.contains("cypher")) {
            return new Pair<>(Boolean.FALSE, dq(dVar.o(), str));
        }
        JSONObject jSONObject = null;
        if (p != null) {
            try {
                jSONObject = new JSONObject(p);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return new Pair<>(Boolean.TRUE, dq(jSONObject, true, z));
    }

    public static iw dq() {
        if (dq == null) {
            synchronized (iw.class) {
                try {
                    if (dq == null) {
                        dq = new iw();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public static String dq(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return null;
        }
        try {
            int optInt = jSONObject.optInt("cypher", -1);
            String optString = jSONObject.optString("message");
            if (optInt == 3) {
                return com.bytedance.sdk.component.utils.dq.ox(optString);
            }
            if (optInt == 4) {
                optString = kk.dq().dq(optString);
                if (TextUtils.isEmpty(optString) && z) {
                    ig.dq().dq(1, -1L, (String) null);
                }
            }
            return optString;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject dq(JSONObject jSONObject, boolean z, boolean z2) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String dq2 = dq(jSONObject, z);
            String optString = jSONObject.optString("auction_price", "");
            if (TextUtils.isEmpty(dq2)) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(dq2);
            if (!z2) {
                return jSONObject2;
            }
            try {
                jSONObject2.put("auction_price", optString);
                return jSONObject2;
            } catch (Throwable unused) {
                return jSONObject2;
            }
        } catch (Throwable unused2) {
            return jSONObject;
        }
    }

    public static JSONObject dq(byte[] bArr, String str) {
        try {
            String d2 = d(bArr, str);
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            return new JSONObject(d2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private Pair<Integer, JSONObject> iw(String str) {
        return p(str);
    }

    public com.bytedance.sdk.openadsdk.core.ji.d d(String str) {
        int i;
        JSONObject jSONObject = new JSONObject();
        com.bytedance.sdk.openadsdk.core.ji.d dVar = new com.bytedance.sdk.openadsdk.core.ji.d();
        HashMap hashMap = new HashMap();
        try {
            dVar.dq(str.length());
            Pair<Integer, JSONObject> dq2 = dq().dq(str, false);
            if (dq2 != null) {
                JSONObject jSONObject2 = (JSONObject) dq2.second;
                try {
                    Object obj = dq2.first;
                    i = obj != null ? ((Integer) obj).intValue() : 3;
                    jSONObject = jSONObject2;
                } catch (Throwable unused) {
                    jSONObject = jSONObject2;
                }
            } else {
                i = 3;
            }
            jSONObject.put("ad_sdk_version", op.ox);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            if (i != 3) {
                hashMap.put("x-ad-sdk-version", op.ox);
                hashMap.put("x-plugin-version", "6.6.0.7");
                hashMap.put("x-pglcypher", String.valueOf(i));
            }
        } catch (Throwable unused2) {
        }
        dVar.dq(hashMap);
        dVar.d(jSONObject);
        return dVar;
    }

    public Pair<Integer, ?> dq(String str, String str2) {
        byte[] bArr;
        if (TextUtils.isEmpty(str)) {
            return iw(str);
        }
        if (kk.d()) {
            bArr = kk.dq().dq(com.bytedance.sdk.openadsdk.core.ir.ig.dq(str.getBytes(StandardCharsets.UTF_8)));
        } else {
            bArr = null;
        }
        if (bArr != null && bArr.length != 0) {
            return new Pair<>(4, bArr);
        }
        if (kk.d()) {
            ig.dq().dq(3, -1L, str2);
        }
        return iw(str);
    }

    public Pair<Integer, JSONObject> dq(String str, boolean z) {
        try {
            if (wp.d().jo()) {
                return d(str, z);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d(th.getMessage());
        }
        return p(str);
    }

    public com.bytedance.sdk.openadsdk.core.ji.d dq(String str) {
        int i;
        Object obj;
        com.bytedance.sdk.openadsdk.core.ji.d dVar = new com.bytedance.sdk.openadsdk.core.ji.d();
        HashMap hashMap = new HashMap();
        try {
            dVar.dq(str.length());
            Pair<Integer, ?> ox = dq().ox(str);
            i = 3;
            if (ox != null) {
                obj = ox.second;
                Object obj2 = ox.first;
                if (obj2 != null) {
                    i = ((Integer) obj2).intValue();
                }
            } else {
                obj = null;
            }
        } catch (Throwable unused) {
        }
        if (i != 4) {
            JSONObject jSONObject = (JSONObject) obj;
            jSONObject.put("ad_sdk_version", op.ox);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            dVar.d(jSONObject);
            dVar.dq(hashMap);
            return dVar;
        }
        hashMap.put("x-ad-sdk-version", op.ox);
        hashMap.put("x-plugin-version", "6.6.0.7");
        hashMap.put("x-pglcypher", String.valueOf(i));
        hashMap.put("Content-Type", "application/octet-stream");
        dVar.dq((byte[]) obj);
        dVar.dq(hashMap);
        return dVar;
    }

    public Pair<Integer, ?> ox(String str) {
        try {
            if (!TextUtils.isEmpty(str) && wp.d().jo()) {
                return dq(str, "get_ad");
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d(th.getMessage());
        }
        return p(str);
    }

    public Pair<Integer, JSONObject> p(String str) {
        return new Pair<>(3, com.bytedance.sdk.component.utils.dq.dq(str));
    }

    public JSONObject s(String str) {
        if (!TextUtils.isEmpty(str) && kk.d()) {
            try {
                byte[] dq2 = kk.dq().dq(str.getBytes(StandardCharsets.UTF_8));
                if (dq2 != null) {
                    String encodeToString = Base64.encodeToString(dq2, 0);
                    if (!TextUtils.isEmpty(encodeToString)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("message", encodeToString);
                        jSONObject.put("cypher", 4);
                        return jSONObject;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
