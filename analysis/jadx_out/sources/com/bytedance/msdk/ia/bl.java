package com.bytedance.msdk.ia;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.component.mn.p;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class bl {
    private static final Map<String, bl> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.mn.dq f1083d;

    private bl(String str, Context context) {
        context = context == null ? com.bytedance.msdk.core.dq.getContext() : context;
        if (context != null) {
            this.f1083d = new p.dq().dq(str).dq(context).dq(1).d(com.bytedance.msdk.core.d.no().mp()).dq();
        }
    }

    public static void d(Map<String, Object> map) {
        try {
            Context context = com.bytedance.msdk.core.dq.getContext();
            SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d((Context) com.bytedance.msdk.dq.s.dq.dq(context), "cb_test", 0);
            String string = d2.getString(MediationConstant.ADN_KS, "");
            String string2 = d2.getString(MediationConstant.ADN_GDT, "");
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "cb_test", 0);
                string = d2.getString(MediationConstant.ADN_KS, "");
                string2 = d2.getString(MediationConstant.ADN_GDT, "");
            }
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(string)) {
                jSONObject.put(MediationConstant.ADN_KS, string);
            }
            if (!TextUtils.isEmpty(string2)) {
                jSONObject.put(MediationConstant.ADN_GDT, string2);
            }
            map.put("cb_stacktrace", jSONObject);
            d2.edit().clear().apply();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static bl dq(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_mediation_sdk_sp";
        }
        Map<String, bl> map = dq;
        bl blVar = map.get(str);
        if (blVar != null) {
            return blVar;
        }
        bl blVar2 = new bl(str, context);
        map.put(str, blVar2);
        return blVar2;
    }

    public static void dq(int i, int i2) {
        try {
            int d2 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("low_m_cnt", 0);
            int d3 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("clean_invalid_cnt", 0) + i;
            int d4 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("force_clean_cnt", 0) + i2;
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("low_m_cnt", d2 + 1);
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("clean_invalid_cnt", d3);
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("force_clean_cnt", d4);
        } catch (Throwable unused) {
        }
    }

    public static void dq(String str, boolean z, long j, String str2) {
        try {
            String d2 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d(str);
            JSONObject jSONObject = TextUtils.isEmpty(d2) ? new JSONObject() : new JSONObject(d2);
            int i = 1;
            if (z) {
                JSONObject optJSONObject = jSONObject.optJSONObject("success");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                    jSONObject.put("success", optJSONObject);
                }
                int optInt = optJSONObject.optInt("times", -1);
                if (optInt != -1) {
                    i = 1 + optInt;
                }
                optJSONObject.put("times", i);
                if (j <= ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
                    long optInt2 = optJSONObject.optInt("avg_req_duration", -1);
                    if (optInt2 != -1) {
                        j = ((optInt2 * (i - 1)) + j) / i;
                    }
                    optJSONObject.put("avg_req_duration", j);
                }
            } else {
                JSONObject optJSONObject2 = jSONObject.optJSONObject("fail");
                if (optJSONObject2 == null) {
                    optJSONObject2 = new JSONObject();
                    jSONObject.put("fail", optJSONObject2);
                }
                int optInt3 = optJSONObject2.optInt("times", -1);
                optJSONObject2.put("times", optInt3 == -1 ? 1 : optInt3 + 1);
                JSONObject optJSONObject3 = optJSONObject2.optJSONObject("error_code");
                if (optJSONObject3 == null) {
                    optJSONObject3 = new JSONObject();
                    optJSONObject2.put("error_code", optJSONObject3);
                }
                int optInt4 = optJSONObject3.optInt(str2, -1);
                if (optInt4 != -1) {
                    i = 1 + optInt4;
                }
                optJSONObject3.put(str2, i);
            }
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq(str, jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public static void dq(Map<String, Object> map) {
        try {
            int d2 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("low_m_cnt", 0);
            int d3 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("clean_invalid_cnt", 0);
            int d4 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("force_clean_cnt", 0);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("low_m_cnt", d2);
            jSONObject.put("invalid_cnt", d3);
            jSONObject.put("force_cnt", d4);
            map.put("low_m_clean", jSONObject);
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("low_m_cnt", 0);
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("clean_invalid_cnt", 0);
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("force_clean_cnt", 0);
        } catch (Throwable unused) {
        }
    }

    public static void dq(JSONObject jSONObject) {
        try {
            String d2 = dq("gm_v3_temp", com.bytedance.msdk.core.dq.getContext()).d("gm_key_v3_bug");
            JSONArray jSONArray = !TextUtils.isEmpty(d2) ? new JSONArray(d2) : new JSONArray();
            if (jSONArray.length() >= 100) {
                jSONArray.put(99, jSONObject);
            } else {
                jSONArray.put(jSONObject);
            }
            dq("gm_v3_temp", com.bytedance.msdk.core.dq.getContext()).dq("gm_key_v3_bug", jSONArray.toString());
        } catch (Throwable unused) {
        }
    }

    public static void dq(boolean z, int i, String str, long j, String str2) {
        try {
            String d2 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("v3");
            JSONObject jSONObject = TextUtils.isEmpty(d2) ? new JSONObject() : new JSONObject(d2);
            int i2 = 1;
            if (z) {
                JSONObject optJSONObject = jSONObject.optJSONObject("success");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                    jSONObject.put("success", optJSONObject);
                }
                int optInt = optJSONObject.optInt("times", -1);
                int i3 = optInt == -1 ? 1 : optInt + 1;
                optJSONObject.put("times", i3);
                int optInt2 = optJSONObject.optInt("upload_size", -1);
                if (optInt2 != -1) {
                    i += optInt2;
                }
                optJSONObject.put("upload_size", i);
                JSONObject optJSONObject2 = optJSONObject.optJSONObject(MediationConstant.KEY_REASON);
                if (optJSONObject2 == null) {
                    optJSONObject2 = new JSONObject();
                    optJSONObject.put(MediationConstant.KEY_REASON, optJSONObject2);
                }
                int optInt3 = optJSONObject2.optInt(str, -1);
                if (optInt3 != -1) {
                    i2 = 1 + optInt3;
                }
                optJSONObject2.put(str, i2);
                if (j <= ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
                    long optInt4 = optJSONObject.optInt("avg_req_duration", -1);
                    optJSONObject.put("avg_req_duration", optInt4 == -1 ? j : ((optInt4 * (i3 - 1)) + j) / i3);
                }
            } else {
                JSONObject optJSONObject3 = jSONObject.optJSONObject("fail");
                if (optJSONObject3 == null) {
                    optJSONObject3 = new JSONObject();
                    jSONObject.put("fail", optJSONObject3);
                }
                int optInt5 = optJSONObject3.optInt("times", -1);
                optJSONObject3.put("times", optInt5 == -1 ? 1 : optInt5 + 1);
                JSONObject optJSONObject4 = optJSONObject3.optJSONObject("error_code");
                if (optJSONObject4 == null) {
                    optJSONObject4 = new JSONObject();
                    optJSONObject3.put("error_code", optJSONObject4);
                }
                int optInt6 = optJSONObject4.optInt(str2, -1);
                if (optInt6 != -1) {
                    i2 = 1 + optInt6;
                }
                optJSONObject4.put(str2, i2);
            }
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("v3", jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public static JSONObject mn(String str) {
        try {
            String d2 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d(str);
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).iw(str);
            return new JSONObject(d2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void ox(String str, long j) {
        try {
            String d2 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("init_time");
            JSONObject jSONObject = TextUtils.isEmpty(d2) ? new JSONObject() : new JSONObject(d2);
            jSONObject.put(str, j);
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).dq("init_time", jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public static JSONArray p() {
        try {
            String d2 = dq("gm_v3_temp", com.bytedance.msdk.core.dq.getContext()).d("gm_key_v3_bug");
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            JSONArray jSONArray = new JSONArray(d2);
            dq("gm_v3_temp", com.bytedance.msdk.core.dq.getContext()).iw("gm_key_v3_bug");
            return jSONArray;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static JSONObject s() {
        try {
            String d2 = dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).d("init_time");
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            dq("evt_upload_info", com.bytedance.msdk.core.dq.getContext()).iw("init_time");
            return new JSONObject(d2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public float d(String str, float f2) {
        try {
            return this.f1083d.d(str, f2);
        } catch (Throwable unused) {
            return f2;
        }
    }

    public int d(String str, int i) {
        try {
            return this.f1083d.d(str, i);
        } catch (Throwable unused) {
            return i;
        }
    }

    public long d(String str, long j) {
        try {
            return this.f1083d.d(str, j);
        } catch (Throwable unused) {
            return j;
        }
    }

    public String d(String str) {
        try {
            return d(str, "");
        } catch (Throwable unused) {
            return null;
        }
    }

    public String d(String str, String str2) {
        try {
            return this.f1083d.d(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public Map<String, ?> d() {
        try {
            return this.f1083d.dq();
        } catch (Throwable unused) {
            return new HashMap();
        }
    }

    public boolean d(String str, boolean z) {
        try {
            return this.f1083d.d(str, z);
        } catch (Throwable unused) {
            return z;
        }
    }

    public String dq() {
        return d("any_door_id", "");
    }

    public void dq(String str) {
        dq("any_door_id", str);
    }

    public void dq(String str, float f2) {
        try {
            this.f1083d.dq(str, f2);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, int i) {
        try {
            this.f1083d.dq(str, i);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, long j) {
        try {
            this.f1083d.dq(str, j);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, String str2) {
        try {
            this.f1083d.dq(str, str2);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, boolean z) {
        try {
            this.f1083d.dq(str, z);
        } catch (Throwable unused) {
        }
    }

    public void iw(String str) {
        try {
            this.f1083d.dq(str);
        } catch (Throwable unused) {
        }
    }

    public int ox(String str) {
        return d(str, -1);
    }

    public void ox() {
        try {
            this.f1083d.d();
        } catch (Throwable unused) {
        }
    }

    public long p(String str) {
        return d(str, -1L);
    }

    public boolean s(String str) {
        return d(str, false);
    }
}
