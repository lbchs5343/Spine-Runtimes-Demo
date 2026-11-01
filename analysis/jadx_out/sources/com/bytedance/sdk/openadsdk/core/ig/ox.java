package com.bytedance.sdk.openadsdk.core.ig;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.ir.k;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.nativeexpress.ia;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.r.yy;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {
    public static int dq;

    public static class dq {
        public static void dq(String str, JSONObject jSONObject, j jVar) {
            String d2 = c.d(jVar);
            if (d2 == null) {
                return;
            }
            ox.dq(jVar, d2.concat("_landingpage"), str, jSONObject);
        }
    }

    public static void d(long j, final j jVar) {
        if (jVar != null && j.d(jVar)) {
            final long currentTimeMillis = j > 0 ? System.currentTimeMillis() - j : 0L;
            dq(jVar, "splash_ad", "play_duration_sum", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.29
                @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
                public void dq(JSONObject jSONObject) throws JSONException {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("skip_duration", currentTimeMillis);
                    com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                }
            });
        }
    }

    public static void d(final j jVar) {
        dq(jVar, "landingpage", "open_url_h5", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.17
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, j.this);
                jSONObject.putOpt("ad_extra_data", jSONObject2);
            }
        });
    }

    public static void d(j jVar, String str) {
        if (jVar != null) {
            com.bytedance.sdk.openadsdk.core.dislike.ox.ox oxVar = new com.bytedance.sdk.openadsdk.core.dislike.ox.ox();
            oxVar.dq("0:00");
            oxVar.d(str);
            dq(jVar.ez(), oxVar);
        }
    }

    public static void d(final j jVar, String str, final int i) {
        dq(jVar, str, "qpon_apply", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.27
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("qpon_apply_status", i);
                    com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public static void d(j jVar, String str, final int i, final String str2) {
        dq(jVar, str, "live_play_fail", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.23
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("error_code", Integer.valueOf(i));
                jSONObject2.putOpt("error_message", str2);
                jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void d(j jVar, String str, long j) {
        String str2;
        if (wp.d().vw()) {
            final long currentTimeMillis = System.currentTimeMillis() - j;
            str.getClass();
            switch (str) {
                case "banner_ad":
                    str2 = "banner_ad_loadtime";
                    break;
                case "rewarded_video":
                    str2 = "rewarded_video_loadtime";
                    break;
                case "stream":
                    str2 = "stream_loadtime";
                    break;
                case "fullscreen_interstitial_ad":
                    str2 = "fullscreen_interstitial_ad_loadtime";
                    break;
                case "embeded_ad":
                    str2 = "embeded_ad_loadtime";
                    break;
                case "interaction":
                    str2 = "interaction_loadtime";
                    break;
                case "draw_ad":
                    str2 = "draw_ad_loadtime";
                    break;
                default:
                    str2 = "";
                    break;
            }
            dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.11
                @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
                public void dq(JSONObject jSONObject) throws JSONException {
                    jSONObject.put(MediationConstant.EXTRA_DURATION, currentTimeMillis);
                }
            });
        }
    }

    public static void d(j jVar, String str, String str2) {
        dq(jVar, str, str2, (com.bytedance.sdk.openadsdk.iw.dq.dq) null);
    }

    public static void d(final j jVar, String str, String str2, final long j, final JSONObject jSONObject) {
        if (jVar == null || jSONObject == null) {
            return;
        }
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.9
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put(MediationConstant.EXTRA_DURATION, j);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject, jVar);
                jSONObject2.put("ad_extra_data", jSONObject.toString());
            }
        });
    }

    public static void d(final j jVar, String str, String str2, final String str3) {
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.15
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("scheme", str3);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void d(j jVar, String str, String str2, Map<String, Object> map) {
        dq(jVar, str, str2, map);
    }

    public static void d(j jVar, String str, String str2, JSONObject jSONObject) {
        dq(jVar, str, str2, jSONObject);
    }

    public static void d(final j jVar, final String str, final Map<String, Object> map, final Double d2) {
        if (d(str, jVar) || jVar == null) {
            return;
        }
        n.d();
        final float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - c.ig(jVar)).floatValue();
        final String dq2 = k.dq(str, o.d(), c.kk(jVar), com.bytedance.sdk.openadsdk.core.multipro.d.ox());
        dq++;
        dq(jVar, str, "show", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.32
            public void dq(j jVar2, Double d3, JSONObject jSONObject) {
                Object obj;
                Object obj2;
                try {
                    Map<String, Object> ps = jVar2.ps();
                    if (ps == null || (obj = ps.get("sdk_bidding_type")) == null || Integer.parseInt(obj.toString()) != 2) {
                        return;
                    }
                    if (d3 != null) {
                        jSONObject.put("ttdsp_price", d3);
                    } else if (jVar2.il() && (obj2 = ps.get("price")) != null) {
                        jSONObject.put("ttdsp_price", Double.parseDouble(obj2.toString()));
                    }
                } catch (Throwable unused) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("device", com.bytedance.sdk.openadsdk.core.ox.dq.dq(wp.getContext(), ia.dq(str)).toString());
                jSONObject2.put("is_cache", jVar.xn() ? 1 : 0);
                jSONObject2.put("cache_type", jVar.iu());
                Map map2 = map;
                if (map2 != null) {
                    if (!map2.containsKey("show_send_type")) {
                        map.put("show_send_type", 0);
                    }
                    for (Map.Entry entry : map.entrySet()) {
                        jSONObject2.put((String) entry.getKey(), entry.getValue());
                    }
                }
                jSONObject2.put("start2req_time", SystemClock.elapsedRealtime() - le.s);
                jSONObject2.put("start_type", !le.f3144d.get() ? 1 : 0);
                jSONObject2.put("show_count", ox.dq);
                jSONObject2.put("can_use_sensor", no.ia().iw());
                jSONObject2.put("is_shake_ads", no.ia().o());
                jSONObject2.put("direction", com.bytedance.sdk.openadsdk.core.kx.dq.dq().iw());
                ox.ox(jVar, str, jSONObject2);
                String str2 = dq2;
                if (str2 != null) {
                    ce.dq(jSONObject2, str2);
                }
                jSONObject2.put("live_sdk_status", com.bytedance.sdk.openadsdk.core.live.d.dq().ox());
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                com.bytedance.sdk.openadsdk.core.wp.no.dq(jVar);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
                float f2 = floatValue;
                if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                }
                jSONObject.putOpt("show_time", Float.valueOf(f2));
                String iy = jVar.iy();
                if (!TextUtils.isEmpty(iy)) {
                    try {
                        double parseDouble = Double.parseDouble(iy);
                        if (parseDouble <= 0.0d) {
                            jSONObject.put("ttdsp_price", 0);
                            return;
                        } else {
                            if (op.f3334d < 4400) {
                                parseDouble *= 100000.0d;
                            }
                            jSONObject.put("ttdsp_price", parseDouble);
                        }
                    } catch (Throwable th) {
                        jSONObject.put("ttdsp_price", 0);
                        th.printStackTrace();
                    }
                }
                dq(jVar, d2, jSONObject);
            }
        });
        String ox = i.ox();
        List<String> en = jVar.en();
        if (!TextUtils.isEmpty(ox)) {
            HashMap hashMap = new HashMap();
            hashMap.put("aid", jVar.fa());
            hashMap.put("cid", jVar.fx());
            hashMap.put("req_id", jVar.el());
            hashMap.put("customer_id", c.no(jVar));
            com.bytedance.sdk.openadsdk.core.gh.d.dq(ox, en, true, hashMap, dq(jVar, str, "show"));
        } else if (en != null && en.size() != 0) {
            dq(jVar, en, str, "no did", "show");
        }
        if (dq % 5 == 0 && com.bytedance.sdk.openadsdk.dq.dq.dq.dq() != null) {
            com.bytedance.sdk.openadsdk.dq.dq.dq.dq().d("AdShow" + System.currentTimeMillis());
        }
        if (com.bytedance.sdk.openadsdk.core.live.d.dq().dq(jVar)) {
            com.bytedance.sdk.openadsdk.core.live.d.dq().dq("tobsdk_livesdk_live_show", jVar, 0L);
        } else if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            com.bytedance.sdk.openadsdk.core.video.ox.dq.dq("tobsdk_livesdk_live_show", jVar, 0L);
        }
        c.ox();
        com.bytedance.sdk.openadsdk.jy.d.d();
        com.bytedance.sdk.openadsdk.core.live.d.dq().p();
        no.ia().p().p();
        k.dq(dq, 1);
        com.bytedance.sdk.openadsdk.core.s.dq().ox(jVar.ao());
        com.bytedance.sdk.openadsdk.core.o.dq.dq(jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(j jVar, JSONObject jSONObject, String str) {
        if (jVar == null || jSONObject == null || TextUtils.isEmpty(str) || !str.equals("embeded_ad")) {
            return;
        }
        try {
            jSONObject.put("video_middle_page", (jVar.ri() != 1 || jVar.g() == null) ? 0 : 1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static boolean d(String str, j jVar) {
        return !TextUtils.isEmpty(str) && jVar != null && str.equals("feed_video_middle_page") && jVar.ri() == 1;
    }

    public static long dq(long j, j jVar, String str) {
        if (j <= 0) {
            return j;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis() - j);
        dq(sb.toString(), jVar, str);
        return 0L;
    }

    public static long dq(long j, boolean z, j jVar, String str) {
        if (z) {
            return System.currentTimeMillis();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis() - j);
        dq(sb.toString(), jVar, str);
        return 0L;
    }

    public static JSONObject dq(j jVar, String str, String str2) {
        return dq(jVar.dn(), jVar.fx(), jVar.el(), str, str2);
    }

    public static JSONObject dq(String str, String str2, String str3, String str4, String str5) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("log_extra", str);
            jSONObject.put(MediationConstant.EXTRA_ADID, str2);
            jSONObject.put("req_id", str3);
            jSONObject.put(TTDownloadField.TT_TAG, str4);
            jSONObject.put("track_type", str5);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void dq(final int i, String str, final j jVar) {
        if (jVar == null) {
            return;
        }
        dq(jVar, str, "saas_auth", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.30
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("saas_auth_status", i);
                yy ma = jVar.ma();
                if (ma != null) {
                    jSONObject2.put("saas_auth_type", ma.d());
                }
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void dq(long j, final int i, final j jVar, String str) {
        if (jVar == null) {
            return;
        }
        final int i2 = (int) (j / 1000);
        dq(jVar, str, "show_over", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.28
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("show_count", i);
                jSONObject2.put("show_time_count", String.valueOf(i2));
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void dq(final long j, final j jVar) {
        if (jVar == null) {
            return;
        }
        dq(jVar, "splash_ad", "skip", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.4
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("skip_duration", j);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void dq(final long j, String str, String str2) {
        j jVar;
        try {
            jVar = com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(str2));
        } catch (Throwable unused) {
            jVar = null;
        }
        if (jVar == null) {
            return;
        }
        dq(jVar, str, "open_appback", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.16
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                jSONObject.put(MediationConstant.EXTRA_DURATION, j);
            }
        });
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        dq2.dq("save_jump_success_time", 0L);
        dq2.dq("save_jump_success_ad_tag", "");
    }

    public static void dq(Context context, j jVar, String str, String str2, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str2) || jVar == null || jSONObject == null) {
            return;
        }
        Object opt = jSONObject.opt("value");
        if (opt == null) {
            opt = jVar.fx();
        }
        String optString = jSONObject.optString("category");
        if (TextUtils.isEmpty(optString)) {
            optString = "app_union";
        }
        Object opt2 = jSONObject.opt("log_extra");
        if (opt2 == null) {
            opt2 = jVar.dn();
        }
        try {
            jSONObject.putOpt("nt", Integer.valueOf(q.ox(context)));
            jSONObject.putOpt("scene_tag", "csj_sdk");
            jSONObject.putOpt(TTDownloadField.TT_TAG, "6.6.0.7");
            jSONObject.putOpt("subtag", str);
        } catch (Exception e2) {
            ig.d(e2.getMessage());
        }
        new dq.C0163dq().s(opt == null ? "" : opt.toString()).ox(optString).p(opt2 != null ? opt2.toString() : "").dq(str).dq(jSONObject).d(str2).dq(new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.3
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
            }
        });
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, com.bytedance.sdk.openadsdk.f.d.d.iw iwVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(iwVar);
        wp.dq().dq(dVar, arrayList);
        if (ig.ox()) {
            ig.dq("AdEvent", "tt_dislike_icon " + dVar.ox());
        }
    }

    public static void dq(j jVar) {
    }

    public static void dq(final j jVar, final String str) {
        String d2;
        if (jVar == null || str == null || (d2 = c.d(jVar)) == null) {
            return;
        }
        dq(jVar, d2, "page_on_create", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.36
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("page_name", str);
                ce.dq(jSONObject2, "");
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                jSONObject.put("ad_extra_data", jSONObject2);
            }
        });
    }

    public static void dq(final j jVar, String str, final int i) {
        dq(jVar, str, "qpon_join", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.26
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("join_status", i);
                    com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public static void dq(final j jVar, String str, final int i, final int i2, final int i3, final boolean z) {
        if (jVar != null && jVar.ls() == 1) {
            dq(jVar, str, "open_live", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.25
                @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
                public void dq(JSONObject jSONObject) throws JSONException {
                    JSONObject jSONObject2 = new JSONObject();
                    int i4 = i3;
                    int po = jVar.po();
                    jSONObject2.put("live_interaction_type", po);
                    jSONObject2.put("client_live_interaction_type", i);
                    jSONObject2.put("real_live_interaction_type", i2);
                    jSONObject2.put("reward_live_type", gx.d(jVar));
                    jSONObject2.put("is_inner", z);
                    fw kf = jVar.kf();
                    if (kf != null) {
                        String dq2 = kf.dq();
                        if (dq2.length() > 500) {
                            dq2 = dq2.substring(0, 500);
                        }
                        jSONObject2.put("deep_link", dq2);
                        if (!dq2.startsWith("snssdk1128") && !dq2.startsWith("snssdk2329") && po == 1 && i4 != 0) {
                            i4 = 2;
                        }
                    }
                    jSONObject2.put("live_interaction_status", i4);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                }
            });
        }
    }

    public static void dq(j jVar, String str, final int i, final String str2) {
        dq(jVar, str, "render_live_picture_fail", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.20
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("error_code", Integer.valueOf(i));
                jSONObject2.putOpt("error_message", str2);
                jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void dq(final j jVar, final String str, final long j) {
        dq(jVar, str, "download_creative_duration", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.33
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("device", com.bytedance.sdk.openadsdk.core.ox.dq.dq(wp.getContext(), ia.dq(str)).toString());
                jSONObject2.put("download_creative_duration", j);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void dq(j jVar, String str, final long j, final JSONObject jSONObject) {
        dq(jVar, str, "live_play_close", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.24
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    jSONObject2.putOpt("ad_extra_data", jSONObject3.toString());
                }
                jSONObject2.put(MediationConstant.EXTRA_DURATION, j);
            }
        });
    }

    public static void dq(final j jVar, String str, String str2, final int i) {
        if (jVar == null) {
            return;
        }
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.2
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(MediationConstant.EXTRA_DURATION, i);
                jSONObject2.put("rom_new_version", e.q());
                jSONObject2.put("is_background", no.ia().dq());
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void dq(j jVar, String str, String str2, int i, int i2) {
        if (jVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("color_percent", Integer.valueOf(i));
        hashMap.put("playable_url", com.bytedance.sdk.openadsdk.core.ir.i.dq(jVar));
        hashMap.put("memory_total", Integer.valueOf(c.le()));
        hashMap.put("memory_use", Integer.valueOf(c.wp() - c.k()));
        hashMap.put("request_id", c.mp(jVar));
        hashMap.put("timestamp", Long.valueOf(System.currentTimeMillis()));
        hashMap.put("color_percent_type", Integer.valueOf(i2));
        kk(jVar, str, str2, hashMap);
    }

    public static void dq(j jVar, String str, String str2, final long j) {
        if (jVar == null) {
            return;
        }
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.8
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                jSONObject.put("timestamp", j);
            }
        });
    }

    public static void dq(final j jVar, String str, String str2, final long j, final int i, final Map<String, Object> map) {
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.6
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                jSONObject.put(MediationConstant.EXTRA_DURATION, j);
                jSONObject.put("percent", i);
                if (map != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry entry : map.entrySet()) {
                        jSONObject2.put((String) entry.getKey(), entry.getValue());
                    }
                    com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                }
            }
        });
    }

    public static void dq(final j jVar, String str, String str2, final long j, final JSONObject jSONObject) {
        if (jVar == null || jSONObject == null) {
            return;
        }
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.7
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put(MediationConstant.EXTRA_DURATION, j);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject, jVar);
                jSONObject2.put("ad_extra_data", jSONObject.toString());
            }
        });
    }

    public static void dq(j jVar, String str, String str2, com.bytedance.sdk.openadsdk.iw.dq.dq dqVar) {
        if (jVar == null) {
            return;
        }
        new dq.C0163dq().s(jVar.fx()).p(jVar.dn()).dq(str).d(str2).dq(dqVar);
    }

    public static void dq(j jVar, String str, String str2, String str3) {
        final JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put(TTDownloadField.TT_REFER, str3);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject, jVar);
            }
        } catch (Throwable unused) {
        }
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.13
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put("ad_extra_data", jSONObject);
            }
        });
    }

    public static void dq(final j jVar, String str, String str2, final Map<String, Object> map) {
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.12
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                if (map != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry entry : map.entrySet()) {
                        jSONObject2.put((String) entry.getKey(), entry.getValue());
                    }
                    com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, jVar);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                }
            }
        });
    }

    public static void dq(final j jVar, String str, String str2, final JSONObject jSONObject) {
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.1
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject3, jVar);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                }
            }
        });
    }

    public static void dq(j jVar, String str, String str2, JSONObject jSONObject, com.bytedance.sdk.openadsdk.iw.dq.dq dqVar) {
        if (jVar == null) {
            return;
        }
        new dq.C0163dq().s(jVar.fx()).p(jVar.dn()).dq(str).d(str2).dq(jSONObject).dq(dqVar);
    }

    public static void dq(final j jVar, final String str, final Map<String, Object> map, final Double d2) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new kk("report_show") { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.22
            @Override // java.lang.Runnable
            public void run() {
                ox.d(jVar, str, (Map<String, Object>) map, d2);
            }
        });
    }

    public static void dq(final j jVar, String str, final JSONObject jSONObject) {
        dq(jVar, c.d(jVar), str, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.5
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject3, jVar);
                    jSONObject2.put("ad_extra_data", jSONObject);
                }
            }
        });
    }

    private static void dq(j jVar, List<String> list, String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("track_type", str3);
            jSONObject.put("error_msg", str2);
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append(list.get(i));
                if (i == size - 1) {
                    sb.append("]");
                } else {
                    sb.append(",");
                }
            }
            jSONObject.put(abn.EXTRA_URL, sb.toString());
            jSONObject.put("urls_size", size);
        } catch (Exception unused) {
        }
        dq(str, jVar.fx(), jVar.dn(), jSONObject);
    }

    public static void dq(String str, long j, boolean z) {
        com.bytedance.sdk.openadsdk.core.mp.p.dq(str, j, z);
    }

    public static void dq(String str, j jVar) {
        if (jVar == null) {
            return;
        }
        dq(jVar, str, "ec_mall_task", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.31
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("mall_reward_callback", 1);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public static void dq(String str, final j jVar, final com.bytedance.sdk.openadsdk.core.r.kk kkVar, final String str2, final boolean z, final Map<String, Object> map, final int i, boolean z2) {
        if (jVar == null || z2 || d(str2, jVar)) {
            return;
        }
        final float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - c.ig(jVar)).floatValue();
        dq(jVar, str2, str, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.37
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                com.bytedance.sdk.openadsdk.core.r.kk kkVar2 = com.bytedance.sdk.openadsdk.core.r.kk.this;
                if (kkVar2 != null) {
                    JSONObject dq2 = kkVar2.dq();
                    dq2.put("device", com.bytedance.sdk.openadsdk.core.ox.dq.dq(wp.getContext(), ia.dq(str2)).toString());
                    dq2.put("is_valid", z);
                    int i2 = i;
                    if (i2 > 0 && i2 <= 2) {
                        dq2.put("user_behavior_type", i2);
                    }
                    ce.dq(dq2, "");
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            dq2.put((String) entry.getKey(), entry.getValue());
                        }
                    }
                    ox.d(jVar, dq2, str2);
                    ox.ox(jVar, str2, dq2);
                    dq2.putOpt("obm_convert", r.ox(jVar));
                    dq2.put("can_use_sensor", no.ia().iw());
                    dq2.put("is_shake_ads", no.ia().o());
                    dq2.put("direction", com.bytedance.sdk.openadsdk.core.kx.dq.dq().iw());
                    dq2.put("is_cache", jVar.xn() ? 1 : 0);
                    dq2.put("cache_type", jVar.iu());
                    com.bytedance.sdk.openadsdk.s.dq.dq(dq2, jVar);
                    jSONObject.put("ad_extra_data", dq2.toString());
                }
                float f2 = floatValue;
                if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                }
                jSONObject.putOpt("show_time", Float.valueOf(f2));
            }
        });
        String ox = i.ox();
        List<String> qz = jVar.qz();
        if (!TextUtils.isEmpty(ox) && "click".equals(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put("aid", jVar.fa());
            hashMap.put("cid", jVar.fx());
            hashMap.put("req_id", jVar.el());
            hashMap.put("customer_id", c.no(jVar));
            com.bytedance.sdk.openadsdk.core.gh.d.dq(ox, qz, true, hashMap, dq(jVar, str2, "click"));
        } else if (qz != null && qz.size() != 0 && "click".equals(str)) {
            dq(jVar, qz, str2, "no did", "click");
        }
        if (str == "click") {
            if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
                com.bytedance.sdk.openadsdk.core.video.ox.dq.dq("tobsdk_livesdk_rec_live_play", jVar, 0L);
            }
            com.bytedance.sdk.openadsdk.core.live.d.dq().p(jVar);
        }
        k.dq(1, 2);
        if (ig.ox()) {
            StringBuilder l = tn.l(str, " ");
            l.append(jVar.fx());
            ig.dq("AdEvent", l.toString());
        }
    }

    public static void dq(final String str, j jVar, String str2) {
        if (jVar == null) {
            return;
        }
        dq(jVar, str2, "ad_show_time", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.34
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                jSONObject.put(MediationConstant.EXTRA_DURATION, str);
            }
        });
    }

    public static void dq(String str, final String str2, final String str3, long j, long j2, JSONObject jSONObject) {
        final float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - c.s(jSONObject.optString("log_extra"))).floatValue();
        new dq.C0163dq().dq(str2).d(str3).ox(str).s(String.valueOf(j)).iw(String.valueOf(j2)).dq(jSONObject).dq(new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.14
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = new JSONObject();
                String optString = jSONObject2.optString("ad_extra_data", null);
                if (optString != null) {
                    jSONObject3 = new JSONObject(optString);
                }
                jSONObject3.put("device", com.bytedance.sdk.openadsdk.core.ox.dq.dq(wp.getContext(), ia.dq(str2)).toString());
                jSONObject3.put("js_event", 1);
                jSONObject2.put("ad_extra_data", jSONObject3.toString());
                jSONObject2.put(TTDownloadField.TT_TAG, str2);
                if ("click".equals(str3)) {
                    float f2 = floatValue;
                    if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    }
                    jSONObject2.putOpt("show_time", Float.valueOf(f2));
                }
            }
        });
        if (ig.ox()) {
            ig.dq("AdEvent", "sendJsAdEvent");
        }
    }

    public static void dq(String str, String str2, String str3, String str4) {
        new dq.C0163dq().dq(str3).d(str4).s(str).p(str2).dq((com.bytedance.sdk.openadsdk.iw.dq.dq) null);
        if (ig.ox()) {
            StringBuilder o = tn.o("tag: ", str3, "label: ", str4, " ");
            o.append(str);
            ig.dq("AdEvent", o.toString());
        }
    }

    public static void dq(String str, String str2, String str3, String str4, com.bytedance.sdk.openadsdk.iw.dq.dq dqVar) {
        new dq.C0163dq().s(str3).p(str4).dq(str).d(str2).dq(dqVar);
    }

    public static void dq(String str, String str2, String str3, final JSONObject jSONObject) {
        dq(str, "show_url", str2, str3, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.35
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject3 != null) {
                    jSONObject2.put("ad_extra_data", jSONObject3.toString());
                }
            }
        });
    }

    public static void dq(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString(TTDownloadField.TT_TAG);
        String optString2 = jSONObject.optString(MediationConstant.EXTRA_ADID);
        String optString3 = jSONObject.optString("log_extra");
        if (TextUtils.isEmpty(optString3) || TextUtils.isEmpty(optString2) || TextUtils.isEmpty(optString)) {
            return;
        }
        dq(optString, optString2, optString3, jSONObject2);
    }

    public static void ia(j jVar, String str, String str2, Map<String, Object> map) {
        io gs = jVar.gs();
        if (map == null) {
            map = new HashMap<>();
        }
        if (gs != null) {
            map.put("wc_type", Integer.valueOf(gs.s()));
        }
        map.put("rom_new_version", e.q());
        map.put("is_background", Boolean.valueOf(no.ia().dq()));
        dq(jVar, str, str2, map);
    }

    public static void iw(j jVar, String str, String str2, Map<String, Object> map) {
        dq(jVar, str, str2, map);
    }

    public static void kk(j jVar, String str, String str2, Map<String, Object> map) {
        dq(jVar, str, str2, map);
    }

    public static void mn(j jVar, String str, String str2, Map<String, Object> map) {
        dq(jVar, str, str2, map);
    }

    public static void ox(final j jVar, String str, final long j) {
        dq(jVar, str, "load", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.18
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject2, j.this);
                jSONObject.putOpt("ad_extra_data", jSONObject2);
                jSONObject.put("preload_type", j.this.sd() != null ? j.this.sd().f3513d : 0);
                jSONObject.put(MediationConstant.EXTRA_DURATION, Math.min(j, 600000L));
            }
        });
    }

    public static void ox(j jVar, String str, String str2) {
        dq(jVar, str, str2, (com.bytedance.sdk.openadsdk.iw.dq.dq) null);
    }

    public static void ox(final j jVar, String str, String str2, final long j, final JSONObject jSONObject) {
        if (jVar == null) {
            return;
        }
        dq(jVar, str, str2, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.10
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                jSONObject2.put(MediationConstant.EXTRA_DURATION, j);
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject, jVar);
                jSONObject2.put("ad_extra_data", jSONObject.toString());
            }
        });
    }

    public static void ox(j jVar, String str, String str2, Map<String, Object> map) {
        dq(jVar, str, str2, map);
    }

    public static void ox(j jVar, String str, String str2, JSONObject jSONObject) {
        if (jVar == null) {
            return;
        }
        new dq.C0163dq().s(jVar.fx()).p(jVar.dn()).dq(str).d(str2).dq(jSONObject).dq((com.bytedance.sdk.openadsdk.iw.dq.dq) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(j jVar, String str, JSONObject jSONObject) throws JSONException {
        com.bytedance.sdk.openadsdk.f.d.ox.d ds;
        if (op.iw() && (ds = jVar.ds()) != null) {
            String f2 = ds.f();
            if (TextUtils.isEmpty(f2)) {
                return;
            }
            jSONObject.putOpt("media_extra", f2);
        }
    }

    public static void p(j jVar, String str, final long j) {
        dq(jVar, str, "render_live_picture_success", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.19
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                jSONObject.put(MediationConstant.EXTRA_DURATION, j);
                jSONObject.putOpt("ad_extra_data", new JSONObject().toString());
            }
        });
    }

    public static void p(j jVar, String str, String str2) {
        io gs = jVar.gs();
        JSONObject jSONObject = null;
        if (gs != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("wc_type", gs.s());
                } catch (Throwable unused) {
                }
                jSONObject = jSONObject2;
            } catch (Throwable unused2) {
            }
        }
        dq(jVar, str, str2, jSONObject);
    }

    public static void p(j jVar, String str, String str2, Map<String, Object> map) {
        dq(jVar, str, str2, map);
    }

    public static void s(j jVar, String str, final long j) {
        dq(jVar, str, "live_play_success", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.ox.21
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                jSONObject.put(MediationConstant.EXTRA_DURATION, j);
                jSONObject.putOpt("ad_extra_data", new JSONObject().toString());
            }
        });
    }

    public static void s(j jVar, String str, String str2, Map<String, Object> map) {
        dq(jVar, str, str2, map);
    }
}
