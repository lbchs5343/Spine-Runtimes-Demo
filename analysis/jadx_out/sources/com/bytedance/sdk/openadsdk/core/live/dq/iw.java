package com.bytedance.sdk.openadsdk.core.live.dq;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.er;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.yy;
import g.abn;
import g.dnf;
import g.dyp;
import g.hat;
import g.tn;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class iw extends com.bytedance.sdk.openadsdk.core.live.dq.dq {
    protected volatile SoftReference<j> iw;
    protected String p;
    protected String s;

    public interface dq {
        void dq(boolean z);
    }

    public static String d(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
                return dyp.LIVE_CELL.name().toLowerCase();
            case 5:
                return dyp.LIVE_CARD.name().toLowerCase();
            default:
                return dyp.NO_VALUE.name().toLowerCase();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int dq(Context context, j jVar, int i, String str, Map<String, Object> map) {
        iw iwVar;
        j jVar2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        op<String, Object> dq2 = new op().dq("context", context).dq("bundle", ox(context, jVar, map));
        Bridge bridge = this.dq;
        hat g2 = hat.g(1);
        int i7 = 0;
        g2.f19148c.put(0, dq2);
        int intValue = ((Integer) bridge.call(0, g2.k(), Integer.class)).intValue();
        this.p = jVar.ff();
        if (intValue == 0) {
            this.iw = new SoftReference<>(jVar);
            int dq3 = com.bytedance.sdk.openadsdk.core.live.p.ox.dq(map);
            if (dq3 == 101 || dq3 == 102) {
                int i8 = intValue | (dq3 << 8);
                iwVar = this;
                jVar2 = jVar;
                i2 = i;
                i3 = i2;
                i4 = i8;
                i5 = 0;
            } else {
                if (dq(jVar, dq3)) {
                    i7 = ox(jVar);
                    i3 = 7;
                    if (i7 == 0) {
                        try {
                            new com.bytedance.sdk.openadsdk.core.live.ox.dq().dq(str).dq(context, jVar);
                            intValue |= dq3 << 8;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        iwVar = this;
                        jVar2 = jVar;
                        i4 = intValue;
                        i5 = i7;
                        i2 = 7;
                    } else {
                        i6 = 2;
                    }
                } else {
                    i6 = i;
                    i3 = i6;
                }
                iwVar = this;
                jVar2 = jVar;
                i2 = i3;
                i5 = i7;
                i3 = i6;
                i4 = intValue;
            }
        } else {
            iwVar = this;
            jVar2 = jVar;
            i2 = i;
            i3 = i2;
            i4 = intValue;
            i5 = 3;
        }
        iwVar.dq(jVar2, str, i2, i3, i5);
        return i4;
    }

    public static String dq(int i) {
        return i == 7 ? dnf.AD_UNION_EXCITATION.b() : i == 8 ? dnf.AD_UNION_INSERT.b() : i == 5 ? dnf.AD_UNION_FEED.b() : i == 9 ? dnf.AD_UNION_DRAW.b() : i == 1 ? "ad_union_banner" : (i == 3 || i == 4) ? "ad_union_topview" : i == 2 ? "ad_union_former_insert" : i == 6 ? "ad_union_patch" : dnf.NO_VALUE.b();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0108 A[Catch: Exception -> 0x00f6, TryCatch #6 {Exception -> 0x00f6, blocks: (B:48:0x00e9, B:50:0x0108, B:52:0x0112), top: B:47:0x00e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ec A[Catch: Exception -> 0x0240, TryCatch #0 {Exception -> 0x0240, blocks: (B:67:0x01c5, B:69:0x01ec, B:70:0x0242, B:72:0x0271, B:73:0x0274, B:75:0x0280, B:76:0x0286), top: B:66:0x01c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0271 A[Catch: Exception -> 0x0240, TryCatch #0 {Exception -> 0x0240, blocks: (B:67:0x01c5, B:69:0x01ec, B:70:0x0242, B:72:0x0271, B:73:0x0274, B:75:0x0280, B:76:0x0286), top: B:66:0x01c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0280 A[Catch: Exception -> 0x0240, TryCatch #0 {Exception -> 0x0240, blocks: (B:67:0x01c5, B:69:0x01ec, B:70:0x0242, B:72:0x0271, B:73:0x0274, B:75:0x0280, B:76:0x0286), top: B:66:0x01c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Bundle ox(Context context, j jVar, Map<String, Object> map) {
        int i;
        er nr;
        String str;
        int i2;
        int i3;
        j jVar2;
        Map<String, Object> map2;
        String optString;
        String dq2;
        String dq3;
        JSONObject jSONObject;
        int i4;
        int i5;
        int i6;
        int i7;
        Bundle bundle = new Bundle();
        if (jVar != null) {
            try {
                bundle.putLong("room_id", Long.parseLong(jVar.ap()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Bundle bundle2 = new Bundle();
            fw kf = jVar.kf();
            int dq4 = com.bytedance.sdk.openadsdk.core.live.p.ox.dq(map);
            yy ma = jVar.ma();
            if (ma != null && ma.ox() == 0) {
                int d2 = ma.d();
                if (d2 == 1) {
                    i = 101;
                } else if (d2 == 3) {
                    i = 104;
                }
                int po = jVar.po();
                int p = p(jVar);
                nr = jVar.nr();
                str = null;
                if (com.bytedance.sdk.openadsdk.core.d.dq.d.iw.d(i)) {
                    if (p > 0 && p() != 2) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            e.dq(jVar.ff(), new Integer(1));
                            jSONObject2.put("auth_reward_gold", p);
                            bundle2.putString("live_auth_extra_info", jSONObject2.toString());
                        } catch (JSONException e3) {
                            ig.d("TTLiveSDkBridge", e3);
                        }
                    } else if (ox(jVar) == 0) {
                        if (jVar.po() == 7) {
                            bundle2.putInt("live_popup_dou_auth_dialog", 1);
                        } else if (jVar.po() == 8) {
                            bundle2.putInt("live_popup_dou_deeplink_dialog", 1);
                            bundle2.putString("live_popup_dou_deeplink_url", kf != null ? kf.dq() : "");
                        }
                    }
                    i2 = po;
                    i3 = -1;
                } else {
                    if (i == 101 || i == 102 || i == 104) {
                        try {
                            jSONObject = new JSONObject();
                            if (nr != null) {
                                i4 = i == 101 ? 1 : i == 104 ? 3 : 2;
                                try {
                                    jSONObject.put("live_auto_auth_login_source", i4);
                                    int i8 = i;
                                    int i9 = i4;
                                    try {
                                        jSONObject.put("live_auto_auth_success_has_ticket", com.bytedance.sdk.openadsdk.core.live.p.ox.dq(jVar.nl()));
                                        jSONObject.put("live_auto_auth_promotion_id", nr.d());
                                        i = i8;
                                        i4 = i9;
                                        if (p > 0) {
                                            if (jSONObject == null) {
                                                try {
                                                    jSONObject = new JSONObject();
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    i5 = 1;
                                                    Object[] objArr = new Object[i5];
                                                    objArr[0] = e;
                                                    ig.d("TTLiveSDkBridge", objArr);
                                                    i3 = i4;
                                                    i2 = i;
                                                    if (nr != null) {
                                                    }
                                                    if (kf != null) {
                                                    }
                                                    if (TextUtils.isEmpty(str)) {
                                                    }
                                                    bundle2.putString("enter_from_merge", str);
                                                    bundle2.putString("enter_method", d(c.ia(jVar)));
                                                    bundle2.putInt("live_pangle_interaction_type", i2);
                                                    bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                                                    String nl = jVar.nl();
                                                    if (i3 != -1) {
                                                    }
                                                    jVar2 = jVar;
                                                    map2 = map;
                                                    bundle.putString("ecom_live_params", dq(jVar2, nl, map2));
                                                    if (jVar2.zr() != null) {
                                                    }
                                                    return bundle;
                                                }
                                            }
                                            i6 = i;
                                            try {
                                                i7 = i4;
                                            } catch (Exception e5) {
                                                e = e5;
                                                i = i6;
                                                i5 = 1;
                                                Object[] objArr2 = new Object[i5];
                                                objArr2[0] = e;
                                                ig.d("TTLiveSDkBridge", objArr2);
                                                i3 = i4;
                                                i2 = i;
                                                if (nr != null) {
                                                }
                                                if (kf != null) {
                                                }
                                                if (TextUtils.isEmpty(str)) {
                                                }
                                                bundle2.putString("enter_from_merge", str);
                                                bundle2.putString("enter_method", d(c.ia(jVar)));
                                                bundle2.putInt("live_pangle_interaction_type", i2);
                                                bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                                                String nl2 = jVar.nl();
                                                if (i3 != -1) {
                                                }
                                                jVar2 = jVar;
                                                map2 = map;
                                                bundle.putString("ecom_live_params", dq(jVar2, nl2, map2));
                                                if (jVar2.zr() != null) {
                                                }
                                                return bundle;
                                            }
                                            try {
                                                e.dq(jVar.ff(), new Integer(1));
                                                jSONObject.put("auth_reward_gold", p);
                                            } catch (Exception e6) {
                                                e = e6;
                                                i = i6;
                                                i4 = i7;
                                                i5 = 1;
                                                Object[] objArr22 = new Object[i5];
                                                objArr22[0] = e;
                                                ig.d("TTLiveSDkBridge", objArr22);
                                                i3 = i4;
                                                i2 = i;
                                                if (nr != null) {
                                                }
                                                if (kf != null) {
                                                }
                                                if (TextUtils.isEmpty(str)) {
                                                }
                                                bundle2.putString("enter_from_merge", str);
                                                bundle2.putString("enter_method", d(c.ia(jVar)));
                                                bundle2.putInt("live_pangle_interaction_type", i2);
                                                bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                                                String nl22 = jVar.nl();
                                                if (i3 != -1) {
                                                }
                                                jVar2 = jVar;
                                                map2 = map;
                                                bundle.putString("ecom_live_params", dq(jVar2, nl22, map2));
                                                if (jVar2.zr() != null) {
                                                }
                                                return bundle;
                                            }
                                        } else {
                                            i6 = i;
                                            i7 = i4;
                                        }
                                        if (jSONObject != null) {
                                            String jSONObject3 = jSONObject.toString();
                                            if (!TextUtils.isEmpty(jSONObject3)) {
                                                bundle2.putString("live_auth_extra_info", jSONObject3);
                                            }
                                        }
                                        i2 = i6;
                                        i3 = i7;
                                    } catch (Exception e7) {
                                        e = e7;
                                        i4 = i9;
                                        i = po;
                                        i5 = 1;
                                        Object[] objArr222 = new Object[i5];
                                        objArr222[0] = e;
                                        ig.d("TTLiveSDkBridge", objArr222);
                                        i3 = i4;
                                        i2 = i;
                                        if (nr != null) {
                                        }
                                        if (kf != null) {
                                        }
                                        if (TextUtils.isEmpty(str)) {
                                        }
                                        bundle2.putString("enter_from_merge", str);
                                        bundle2.putString("enter_method", d(c.ia(jVar)));
                                        bundle2.putInt("live_pangle_interaction_type", i2);
                                        bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                                        String nl222 = jVar.nl();
                                        if (i3 != -1) {
                                        }
                                        jVar2 = jVar;
                                        map2 = map;
                                        bundle.putString("ecom_live_params", dq(jVar2, nl222, map2));
                                        if (jVar2.zr() != null) {
                                        }
                                        return bundle;
                                    }
                                } catch (Exception e8) {
                                    e = e8;
                                }
                            }
                        } catch (Exception e9) {
                            e = e9;
                            i = po;
                            i5 = 1;
                            i4 = -1;
                            Object[] objArr2222 = new Object[i5];
                            objArr2222[0] = e;
                            ig.d("TTLiveSDkBridge", objArr2222);
                            i3 = i4;
                            i2 = i;
                            if (nr != null) {
                            }
                            if (kf != null) {
                            }
                            if (TextUtils.isEmpty(str)) {
                            }
                            bundle2.putString("enter_from_merge", str);
                            bundle2.putString("enter_method", d(c.ia(jVar)));
                            bundle2.putInt("live_pangle_interaction_type", i2);
                            bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                            String nl2222 = jVar.nl();
                            if (i3 != -1) {
                            }
                            jVar2 = jVar;
                            map2 = map;
                            bundle.putString("ecom_live_params", dq(jVar2, nl2222, map2));
                            if (jVar2.zr() != null) {
                            }
                            return bundle;
                        }
                    } else if (i == 103) {
                        try {
                            bundle2.putInt("live_popup_dou_auth_dialog", 1);
                            jSONObject = null;
                            i4 = -1;
                            if (p > 0) {
                            }
                            if (jSONObject != null) {
                            }
                            i2 = i6;
                            i3 = i7;
                        } catch (Exception e10) {
                            e = e10;
                            i5 = 1;
                            i4 = -1;
                            Object[] objArr22222 = new Object[i5];
                            objArr22222[0] = e;
                            ig.d("TTLiveSDkBridge", objArr22222);
                            i3 = i4;
                            i2 = i;
                            if (nr != null) {
                            }
                            if (kf != null) {
                            }
                            if (TextUtils.isEmpty(str)) {
                            }
                            bundle2.putString("enter_from_merge", str);
                            bundle2.putString("enter_method", d(c.ia(jVar)));
                            bundle2.putInt("live_pangle_interaction_type", i2);
                            bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                            String nl22222 = jVar.nl();
                            if (i3 != -1) {
                            }
                            jVar2 = jVar;
                            map2 = map;
                            bundle.putString("ecom_live_params", dq(jVar2, nl22222, map2));
                            if (jVar2.zr() != null) {
                            }
                            return bundle;
                        }
                    } else {
                        jSONObject = null;
                    }
                    i = po;
                    i4 = -1;
                    if (p > 0) {
                    }
                    if (jSONObject != null) {
                    }
                    i2 = i6;
                    i3 = i7;
                }
                if (nr != null) {
                    if (!TextUtils.isEmpty(nr.mn())) {
                        bundle2.putString("live_csj_libra_param", nr.mn());
                    }
                    JSONArray ia = nr.ia();
                    if (ia != null) {
                        bundle.putString("live_tob_task_center_config", ia.toString());
                        bundle.putString("live_tob_task_key", jVar.ff());
                    }
                }
                if (kf != null && !TextUtils.isEmpty(kf.dq())) {
                    try {
                        Uri parse = Uri.parse(kf.dq());
                        JSONObject jSONObject4 = new JSONObject(parse.getQueryParameter("ad_data_params"));
                        optString = jSONObject4.optString("log_extra");
                        HashMap hashMap = new HashMap();
                        JSONObject jSONObject5 = new JSONObject();
                        if (!TextUtils.isEmpty(optString)) {
                            JSONObject jSONObject6 = new JSONObject(optString);
                            jSONObject6.put("ad_event_aid", jSONObject4.optString("aid"));
                            jSONObject6.put("ad_event_source", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, abn.EXTRA_SOURCE));
                            jSONObject6.put("ad_event_gd_label", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "gd_label"));
                            jSONObject6.put("ad_event_union_user_id", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "union_user_id"));
                            jSONObject6.put("ad_event_app_siteid", no.ia().mp());
                            jSONObject6.put("ad_event_live_type", "1");
                            hashMap.put("log_extra", jSONObject6.toString());
                            jSONObject5.put("log_extra", jSONObject6.toString());
                        }
                        String optString2 = jSONObject4.optString("cid");
                        jSONObject5.put("creativeID", optString2);
                        bundle.putString("IESLiveEffectAdTrackExtraServiceKey", jSONObject5.toString());
                        hashMap.put("is_other_channel", "union_ad");
                        hashMap.put("value", optString2);
                        bundle.putSerializable("live_effect_ad_log_extra_map", hashMap);
                        dq2 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "pangle_live_room_data");
                        if (!TextUtils.isEmpty(dq2)) {
                            bundle.putString("pangle_live_room_data", dq2);
                        }
                        dq3 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "owner_open_id");
                        if (TextUtils.isEmpty(dq3)) {
                            dq3 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "user_id");
                        }
                        bundle2.putString("anchor_id", dq3);
                        bundle2.putString("live.intent.extra.REQUEST_ID", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "request_id"));
                        str = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse, "enter_from_merge");
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    str = dq(c.ia(jVar));
                }
                bundle2.putString("enter_from_merge", str);
                bundle2.putString("enter_method", d(c.ia(jVar)));
                bundle2.putInt("live_pangle_interaction_type", i2);
                bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
                String nl222222 = jVar.nl();
                if (i3 != -1) {
                    try {
                        if (!TextUtils.isEmpty(nl222222)) {
                            JSONObject jSONObject7 = new JSONObject(nl222222);
                            JSONObject optJSONObject = jSONObject7.optJSONObject("enter_request");
                            JSONObject jSONObject8 = new JSONObject();
                            jSONObject8.put("live_auto_auth_login_source", i3);
                            optJSONObject.put("live_commerce_sdk_custom_params", jSONObject8);
                            jSONObject7.remove("enter_request");
                            jSONObject7.put("enter_request", optJSONObject);
                            nl222222 = jSONObject7.toString();
                        }
                    } catch (Exception unused) {
                    }
                }
                jVar2 = jVar;
                map2 = map;
                bundle.putString("ecom_live_params", dq(jVar2, nl222222, map2));
            }
            i = dq4;
            int po2 = jVar.po();
            int p2 = p(jVar);
            nr = jVar.nr();
            str = null;
            if (com.bytedance.sdk.openadsdk.core.d.dq.d.iw.d(i)) {
            }
            if (nr != null) {
            }
            if (kf != null) {
                Uri parse2 = Uri.parse(kf.dq());
                JSONObject jSONObject42 = new JSONObject(parse2.getQueryParameter("ad_data_params"));
                optString = jSONObject42.optString("log_extra");
                HashMap hashMap2 = new HashMap();
                JSONObject jSONObject52 = new JSONObject();
                if (!TextUtils.isEmpty(optString)) {
                }
                String optString22 = jSONObject42.optString("cid");
                jSONObject52.put("creativeID", optString22);
                bundle.putString("IESLiveEffectAdTrackExtraServiceKey", jSONObject52.toString());
                hashMap2.put("is_other_channel", "union_ad");
                hashMap2.put("value", optString22);
                bundle.putSerializable("live_effect_ad_log_extra_map", hashMap2);
                dq2 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse2, "pangle_live_room_data");
                if (!TextUtils.isEmpty(dq2)) {
                }
                dq3 = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse2, "owner_open_id");
                if (TextUtils.isEmpty(dq3)) {
                }
                bundle2.putString("anchor_id", dq3);
                bundle2.putString("live.intent.extra.REQUEST_ID", com.bytedance.sdk.openadsdk.core.live.ox.dq(parse2, "request_id"));
                str = com.bytedance.sdk.openadsdk.core.live.ox.dq(parse2, "enter_from_merge");
            }
            if (TextUtils.isEmpty(str)) {
            }
            bundle2.putString("enter_from_merge", str);
            bundle2.putString("enter_method", d(c.ia(jVar)));
            bundle2.putInt("live_pangle_interaction_type", i2);
            bundle.putBundle("live.intent.extra.ENTER_LIVE_EXTRA", bundle2);
            String nl2222222 = jVar.nl();
            if (i3 != -1) {
            }
            jVar2 = jVar;
            map2 = map;
            bundle.putString("ecom_live_params", dq(jVar2, nl2222222, map2));
        } else {
            map2 = map;
            jVar2 = jVar;
        }
        if (jVar2.zr() != null) {
            Object obj = map2.get("reward_countdown");
            if (obj instanceof Long) {
                long longValue = ((Long) obj).longValue();
                if (longValue > 0) {
                    bundle.putLong("csj.reward_countdown_duration_ms", longValue);
                    bundle.putInt("android.app.activity.request_code", 1);
                    if (map2.containsKey("reward_live_scene") && ((Integer) map2.get("reward_live_scene")).intValue() == 1) {
                        bundle.putInt("live_popup_reward_auth", 1);
                        ig.p("rewardAuthFlag", "liv pop rew auth:  1");
                    }
                }
            }
        }
        return bundle;
    }

    private int p(j jVar) {
        String rq = jVar.rq();
        Integer num = (Integer) e.dq(jVar.ff(), Integer.class);
        if ((num != null && num.intValue() > 0) || TextUtils.isEmpty(rq)) {
            return 0;
        }
        try {
            return new JSONObject(rq).optInt("auth_reward_gold");
        } catch (Throwable th) {
            ig.ox("TTLiveSDkBridge", th);
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.dq
    public boolean Q_() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    @Deprecated
    public int b_(j jVar) {
        return 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.dq
    public void b_(String str) {
        this.s = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int d(Context context, j jVar, Map<String, Object> map) {
        Object obj;
        long longValue;
        if (map != null) {
            try {
                obj = map.get("reward_countdown");
            } catch (Exception e2) {
                ig.d("TTLiveSDkBridge", e2.toString());
            }
            if (obj instanceof Long) {
                longValue = ((Long) obj).longValue();
                if (context != null || jVar == null) {
                    return 5;
                }
                if (!(context instanceof Activity)) {
                    return 7;
                }
                if (!gx.dq(jVar)) {
                    return 5;
                }
                if (longValue < 0) {
                    return 8;
                }
                if (gx.d(jVar) == 1) {
                    return 9;
                }
                return dq(context, jVar, map);
            }
        }
        longValue = 0;
        if (context != null) {
        }
        return 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(final Context context, final j jVar, final Map<String, Object> map) {
        if (!a_(jVar)) {
            return 6;
        }
        String str = map != null ? (String) map.get("event_tag") : "";
        final int po = jVar.po();
        if (!s()) {
            dq(jVar, str, po, 1, po == 7 ? 1 : 2);
            return 1;
        }
        jVar.ff();
        if (this.dq == null) {
            return 4;
        }
        this.f3158d = str;
        dq dqVar = new dq() { // from class: com.bytedance.sdk.openadsdk.core.live.dq.iw.1
            @Override // com.bytedance.sdk.openadsdk.core.live.dq.iw.dq
            public void dq(boolean z) {
                iw iwVar = iw.this;
                iwVar.dq(context, jVar, po, iwVar.f3158d, (Map<String, Object>) map);
            }
        };
        if (p() == 2 || !dq(jVar, dqVar, true)) {
            return dq(context, jVar, po, str, map);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(com.bytedance.sdk.openadsdk.core.live.d.d dVar, boolean z) {
        if (this.dq == null) {
            return 12;
        }
        if (!s()) {
            return 11;
        }
        HashMap p = tn.p("expand_method_name", "requestDyAuth");
        p.put("expand_method_param", new Object[]{no.ia().by(), dVar, Boolean.valueOf(z)});
        Bridge bridge = this.dq;
        hat f2 = hat.f();
        f2.f19148c.put(0, p);
        ig.dq("TTLiveSDkBridge", "requestDyAuth:" + bridge.call(7, f2.k(), null) + ", syncAuth = " + z);
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(j jVar, ox oxVar, String str) {
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return 10;
        }
        if (this.dq == null) {
            return 12;
        }
        if (!s()) {
            return 11;
        }
        Activity by = no.ia().by();
        if (by == null) {
            return 13;
        }
        op<String, Object> dq2 = new op().dq("context", by).dq("scheme_uri", str);
        try {
            Bridge bridge = this.dq;
            hat g2 = hat.g(1);
            g2.f19148c.put(0, dq2);
            Boolean bool = (Boolean) bridge.call(8, g2.k(), Boolean.class);
            if (bool != null) {
                return bool.booleanValue() ? 1 : 10;
            }
            return 10;
        } catch (Exception unused) {
            return 14;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.dq, com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq(Bridge bridge) {
        super.dq(bridge);
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.dq, com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq(String str, j jVar, long j) {
        com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(str, jVar, j);
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq(String str, boolean z) {
        if (this.dq != null && s()) {
            HashMap p = tn.p("expand_method_name", str);
            p.put("expand_method_param", new Object[]{Boolean.valueOf(z)});
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.f19148c.put(0, p);
            bridge.call(7, f2.k(), null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public boolean dq(j jVar) {
        return a_(jVar);
    }

    public boolean dq(j jVar, final dq dqVar, boolean z) {
        yy ma;
        if (this.s == null || (ma = jVar.ma()) == null || ma.ox() == 0) {
            return false;
        }
        try {
            if (Integer.parseInt(this.s.replaceAll("\\.", "")) < 211413) {
                return false;
            }
        } catch (Exception unused) {
        }
        int d2 = ma.d();
        boolean z2 = d2 > 0;
        if (z) {
            z2 = d2 == 3;
        }
        if (z2) {
            this.iw = new SoftReference<>(jVar);
            if (dq(new com.bytedance.sdk.openadsdk.core.live.d.d() { // from class: com.bytedance.sdk.openadsdk.core.live.dq.iw.2
                @Override // com.bytedance.sdk.openadsdk.core.live.d.d
                public void dq(Object obj) {
                    ig.p("TTLiveSDkBridge", "requestDyAuth back:");
                    if (obj instanceof Map) {
                        Map map = (Map) obj;
                        if (map.containsKey(PluginConstants.KEY_ERROR_CODE)) {
                            Object obj2 = map.get(PluginConstants.KEY_ERROR_CODE);
                            if (obj2 instanceof String) {
                                try {
                                    int parseInt = Integer.parseInt((String) obj2);
                                    r2 = parseInt == 1;
                                    ig.dq("TTLiveSDkBridge", "requestDyAuth result:".concat(String.valueOf(parseInt)));
                                } catch (NumberFormatException unused2) {
                                }
                            }
                        }
                    }
                    dqVar.dq(r2);
                }
            }, d2 == 3) == 1) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public String iw() {
        return this.s;
    }
}
