package com.bytedance.sdk.openadsdk.core.live.dq;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import g.awf;
import g.hat;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s extends dq {
    private String d(j jVar, Map<String, Object> map) {
        if (jVar == null) {
            return "";
        }
        try {
            Uri dq = com.bytedance.sdk.openadsdk.core.live.ox.dq(Uri.parse("sslocal://webcast_room"), dq(jVar, map));
            ig.dq("TTLiveSDkBridge", "link: " + dq.toString());
            return dq.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            ig.p("TTLiveSDkBridge", "link: null");
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str, j jVar, long j) {
        try {
            if (this.dq == null) {
                return;
            }
            Map<String, String> dq = dq(jVar, (Map<String, Object>) null);
            Map<String, String> dq2 = com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(wp.getContext());
            dq2.put("room_id", dq.get("room_id"));
            dq2.put("anchor_id", dq.get("owner_open_id"));
            dq2.put("enter_from_merge", dq.get("enter_from_merge"));
            dq2.put("enter_method", dq.get("enter_method"));
            dq2.put("action_type", "click");
            dq2.put("request_id", dq.get("request_id"));
            StringBuilder sb = new StringBuilder();
            sb.append(j);
            dq2.put(MediationConstant.EXTRA_DURATION, sb.toString());
            dq2.put("is_other_channel", "union_ad");
            dq2.put("IESLiveEffectAdTrackExtraServiceKey", dq.get("IESLiveEffectAdTrackExtraServiceKey"));
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : dq2.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.f19148c.put(0, str);
            f2.f19148c.put(1, jSONObject);
            bridge.call(4, f2.k(), Void.class);
        } catch (Throwable th) {
            if (ig.ox()) {
                ig.d("TTInnerLiveHelper", "Throwable : ", th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.dq
    public boolean Q_() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int b_(j jVar) {
        if (this.dq != null) {
            long d2 = d(jVar);
            if (d2 == 0) {
                return 1;
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putLong("room_id", d2);
                Bridge bridge = this.dq;
                hat f2 = hat.f();
                f2.o(0, 2);
                f2.f19148c.put(1, bundle);
                Object call = bridge.call(3, f2.k(), Object.class);
                if (call != null && (call instanceof Integer)) {
                    return ((Integer) call).intValue();
                }
            } catch (Throwable th) {
                ig.d("TTLiveSDkBridge", th);
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int d() {
        if (this.dq != null) {
            try {
                Bridge bridge = this.dq;
                hat f2 = hat.f();
                f2.o(0, 1);
                Object call = bridge.call(3, f2.k(), Object.class);
                if (call != null && (call instanceof Integer)) {
                    return ((Integer) call).intValue();
                }
            } catch (Throwable th) {
                ig.d("TTLiveSDkBridge", th);
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int d(Context context, j jVar, Map<String, Object> map) {
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008e  */
    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int dq(Context context, j jVar, Map<String, Object> map) {
        int i;
        int i2;
        if (context == null || jVar == null) {
            return -1;
        }
        if (!a_(jVar)) {
            ig.dq("TTLiveSDkBridge", "mata has not le property");
            return -1;
        }
        String str = map != null ? (String) map.get("event_tag") : "";
        int po = jVar.po();
        int i3 = 1;
        if (!s()) {
            dq(jVar, str, po, 1, po == 7 ? 1 : 2);
            return 1;
        }
        if (this.dq != null) {
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.f19148c.put(0, d(jVar, map));
            i3 = ((Integer) bridge.call(0, f2.k(), Integer.class)).intValue();
            if (i3 == 0) {
                if (dq(jVar, 0)) {
                    int ox = ox(jVar);
                    if (ox == 0) {
                        try {
                            new com.bytedance.sdk.openadsdk.core.live.ox.dq().dq(str).dq(context, jVar);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    i2 = ox;
                } else {
                    i2 = 0;
                }
                ig.dq("TTLiveSDkBridge", i3 != 0 ? "le openliv succ" : awf.ac(i3, "callR: "));
                i = i2;
            }
            i2 = 3;
            ig.dq("TTLiveSDkBridge", i3 != 0 ? "le openliv succ" : awf.ac(i3, "callR: "));
            i = i2;
        } else {
            i = 1;
        }
        dq(jVar, str, po, po, i);
        return i3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(com.bytedance.sdk.openadsdk.core.live.d.d dVar, boolean z) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(j jVar, ox oxVar, String str) {
        if (jVar == null || TextUtils.isEmpty(jVar.nh()) || this.dq == null) {
            return -1;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("schema", jVar.nh());
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.o(0, 5);
            f2.f19148c.put(1, bundle);
            Object call = bridge.call(3, f2.k(), Object.class);
            if (call == null) {
                return 4;
            }
            if (call instanceof Integer) {
                return ((Integer) call).intValue();
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("schema", str);
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.o(0, 6);
            f2.f19148c.put(1, bundle);
            Object call = bridge.call(3, f2.k(), Object.class);
            if (call instanceof Integer) {
                return ((Integer) call).intValue();
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    public Map<String, String> dq(j jVar, Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        if (jVar != null) {
            hashMap.put("room_id", jVar.ap());
            if (this.dq != null) {
                int ia = c.ia(jVar);
                Bridge bridge = this.dq;
                hat f2 = hat.f();
                f2.o(0, ia);
                String str = (String) bridge.call(1, f2.k(), String.class);
                Bridge bridge2 = this.dq;
                hat f3 = hat.f();
                f3.o(0, ia);
                f3.i(1, com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar));
                String str2 = (String) bridge2.call(2, f3.k(), String.class);
                hashMap.put("enter_from_merge", str);
                hashMap.put("enter_method", str2);
            }
            hashMap.put("host", "aweme");
            hashMap.put("is_other_channel", "union_ad");
            String dq = dq(jVar, jVar.nl(), map);
            if (!TextUtils.isEmpty(dq)) {
                hashMap.put("ecom_live_params", dq);
            }
            fw kf = jVar.kf();
            if (kf != null && !TextUtils.isEmpty(kf.dq())) {
                try {
                    Uri parse = Uri.parse(kf.dq());
                    JSONObject jSONObject = new JSONObject(parse.getQueryParameter("ad_data_params"));
                    String optString = jSONObject.optString("log_extra");
                    JSONObject jSONObject2 = new JSONObject();
                    if (!TextUtils.isEmpty(optString)) {
                        JSONObject jSONObject3 = new JSONObject(optString);
                        jSONObject3.put("ad_event_aid", jSONObject.optString("aid"));
                        jSONObject3.put("ad_event_source", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, abn.EXTRA_SOURCE));
                        jSONObject3.put("ad_event_gd_label", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "gd_label"));
                        jSONObject3.put("ad_event_union_user_id", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "union_user_id"));
                        jSONObject3.put("ad_event_app_siteid", no.ia().mp());
                        jSONObject3.put("ad_event_live_type", "1");
                        hashMap.put("log_extra", jSONObject3.toString());
                        jSONObject2.put("log_extra", jSONObject3.toString());
                    }
                    String optString2 = jSONObject.optString("cid");
                    jSONObject2.put("creativeID", optString2);
                    hashMap.put("creative_id", optString2);
                    hashMap.put("IESLiveEffectAdTrackExtraServiceKey", jSONObject2.toString());
                    String dq2 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "owner_open_id");
                    if (TextUtils.isEmpty(dq2)) {
                        dq2 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "user_id");
                    }
                    hashMap.put("owner_open_id", dq2);
                    String dq3 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "pangle_live_room_data");
                    if (!TextUtils.isEmpty(dq3)) {
                        hashMap.put("pangle_live_room_data", dq3);
                    }
                    hashMap.put("request_id", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "request_id"));
                    return hashMap;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return hashMap;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.dq, com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq(final String str, final j jVar, final long j) {
        com.bytedance.sdk.openadsdk.h.mn.d(new kk("csj_live_log_event_v2") { // from class: com.bytedance.sdk.openadsdk.core.live.dq.s.1
            @Override // java.lang.Runnable
            public void run() {
                s.this.d(str, jVar, j);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq(String str, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public boolean dq(j jVar) {
        return a_(jVar) && this.dq != null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public String iw() {
        if (this.dq == null) {
            return null;
        }
        try {
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.o(0, 4);
            Object call = bridge.call(3, f2.k(), Object.class);
            if (call == null || !(call instanceof String)) {
                return null;
            }
            return (String) call;
        } catch (Throwable th) {
            ig.d("TTLiveSDkBridge", th);
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public JSONObject mn() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public void ox() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int p() {
        boolean z = false;
        if (this.dq != null) {
            try {
                Bridge bridge = this.dq;
                hat f2 = hat.f();
                f2.o(0, 3);
                Object call = bridge.call(3, f2.k(), Object.class);
                if (call != null && (call instanceof Boolean)) {
                    z = ((Boolean) call).booleanValue();
                }
            } catch (Throwable th) {
                ig.d("TTLiveSDkBridge", th);
            }
        }
        return z ? 2 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public boolean s() {
        return d() == 2;
    }
}
