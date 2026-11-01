package com.bytedance.sdk.openadsdk.core.wp;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.ce;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import g.dgk;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mp {
    private JSONObject ox;
    private JSONObject p;
    private static final ConcurrentHashMap<String, JSONObject> dq = new ConcurrentHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private static AtomicInteger f3725d = new AtomicInteger();

    private JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("core_api_code", op.f3334d);
            jSONObject.put("core_plugin_code", 6607);
            jSONObject.put("ext_api_code", op.p);
            jSONObject.put("ext_plugin_code", ce.d());
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject d(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            j dq2 = com.bytedance.sdk.openadsdk.core.video.p.d.dq(pVar);
            if (dq2 != null) {
                String dq3 = c.dq(dq2, "");
                int parseInt = !TextUtils.isEmpty(dq3) ? Integer.parseInt(dq3) : 0;
                int ia = c.ia(dq2);
                jSONObject.put("video_count", com.bytedance.sdk.openadsdk.iw.d.dq.dq());
                JSONObject dq4 = dq();
                jSONObject.put("device", dq4);
                JSONObject dq5 = dq(pVar, parseInt, ia);
                jSONObject.put("current_video", dq5);
                jSONObject.put("predict_use", dq(String.valueOf(parseInt)));
                jSONObject.put("csj_plugin", d());
                jSONObject.put("package", d("video_cache"));
                jSONObject.put(dgk.UNIT_HOUR, dq4.optInt(dgk.UNIT_HOUR));
                jSONObject.put("video_size", pVar.ig());
                jSONObject.put("rit", parseInt);
                jSONObject.put("preload_size", pVar.iw());
                jSONObject.put("access", dq4.optString("access"));
                jSONObject.put("sdk_fg_time", dq4.optLong("sdk_fg_time"));
                jSONObject.put("ad_slot_type", dq5.optInt("ad_slot_type"));
            }
            return jSONObject;
        } catch (Throwable th) {
            th.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject d(final String str) {
        ox oxVar = (ox) AutoService.dq(ox.class);
        if (oxVar != null) {
            oxVar.dq(str, new mn() { // from class: com.bytedance.sdk.openadsdk.core.wp.mp.1
                @Override // com.bytedance.sdk.openadsdk.core.wp.mn
                public ValueSet dq(int i, Result result) {
                    if (result == null) {
                        return null;
                    }
                    ValueSet values = result.values();
                    boolean isSuccess = result.isSuccess();
                    if (values != null) {
                        if (TextUtils.equals(str, values.stringValue(5))) {
                            if (isSuccess) {
                                mp.this.ox = (JSONObject) values.objectValue(3, JSONObject.class);
                                JSONObject unused = mp.this.ox;
                            } else {
                                mp.this.p = (JSONObject) values.objectValue(4, JSONObject.class);
                            }
                        }
                    }
                    return super.dq(i, result);
                }
            });
        } else {
            this.ox = new JSONObject();
        }
        return this.ox;
    }

    private static String dq(int i, String str) {
        int incrementAndGet = f3725d.incrementAndGet();
        return i + "-" + i.ox() + "-" + incrementAndGet + "-" + str + "-" + System.currentTimeMillis();
    }

    private JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("access", q.mn(wp.getContext()));
            jSONObject.put(dgk.UNIT_HOUR, Calendar.getInstance().get(11));
            long currentTimeMillis = System.currentTimeMillis() - com.bytedance.sdk.openadsdk.core.ir.dq.f3043d;
            if (currentTimeMillis <= 0) {
                return jSONObject;
            }
            jSONObject.put("sdk_fg_time", currentTimeMillis);
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    private JSONObject dq(com.bykv.vk.openvk.component.video.api.ox.p pVar, int i, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("video_size", pVar.ig());
            jSONObject.put("preload_size", pVar.iw());
            jSONObject.put("video_duration", pVar.e().iw());
            jSONObject.put("ad_slot_type", i2);
            jSONObject.put("rit", i);
            jSONObject.put("video_url", pVar.f());
            jSONObject.put("preload_all", pVar.mp());
            jSONObject.put("trace_id", dq(i, pVar.fw()));
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    private static JSONObject dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return dq.get(str);
    }

    public static void dq(int i, long j, j jVar, com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        com.bytedance.sdk.openadsdk.f.d.ox.d ds;
        if (jVar == null || pVar == null || (ds = jVar.ds()) == null) {
            return;
        }
        try {
            JSONObject dq2 = dq(ds.mn());
            if (dq2 != null) {
                String fw = pVar.fw();
                String optString = dq2.optString("trace_id");
                if (!TextUtils.isEmpty(optString) && optString.contains(fw)) {
                    dq2.put("play_type", i);
                    dq2.put("cache_size", j);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(long j, j jVar, com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        com.bytedance.sdk.openadsdk.f.d.ox.d ds;
        if (jVar == null || pVar == null || (ds = jVar.ds()) == null) {
            return;
        }
        try {
            JSONObject dq2 = dq(ds.mn());
            if (dq2 != null) {
                String optString = dq2.optString("trace_id");
                if (!TextUtils.isEmpty(optString) && optString.contains(pVar.fw())) {
                    dq2.put("play_duration", j);
                    dq2.put("pitaya_meet_cache", 1);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar, JSONObject jSONObject, int i, int i2) {
        int optInt;
        if (pVar == null || jSONObject == null || (optInt = jSONObject.optInt("rit", 0)) <= 0) {
            return;
        }
        dq.put(String.valueOf(optInt), jSONObject);
    }

    public JSONObject dq(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        return d(pVar);
    }
}
