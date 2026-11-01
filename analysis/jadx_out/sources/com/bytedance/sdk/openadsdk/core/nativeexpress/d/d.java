package com.bytedance.sdk.openadsdk.core.nativeexpress.d;

import android.content.res.Resources;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.r.ws;
import com.bytedance.sdk.openadsdk.core.wp;
import g.abn;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    public static String d(j jVar) {
        if (jVar == null || jVar.tv() == null) {
            return null;
        }
        return jVar.tv().d();
    }

    public static JSONObject d(float f2, float f3, boolean z, j jVar) {
        String str;
        String str2;
        com.bytedance.sdk.component.adexpress.dq.ox.d dq;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "android");
            JSONObject jSONObject2 = new JSONObject();
            if (wp.d().fn()) {
                float f4 = wp.getContext().getResources().getDisplayMetrics().density;
                float f5 = Resources.getSystem().getDisplayMetrics().density;
                jSONObject2.put(MediaFormat.KEY_WIDTH, ce.d(f5, ce.dq(f4, f2)));
                jSONObject2.put(MediaFormat.KEY_HEIGHT, ce.d(f5, ce.dq(f4, f3)));
            } else {
                jSONObject2.put(MediaFormat.KEY_WIDTH, f2);
                jSONObject2.put(MediaFormat.KEY_HEIGHT, f3);
            }
            if (z) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            jSONObject.put("creative", dq(false, jVar));
            if (jVar.tv() != null) {
                str = jVar.tv().s();
                str2 = jVar.tv().iw();
            } else {
                str = null;
                str2 = null;
            }
            if (TextUtils.isEmpty(str)) {
                str = (jVar.tv() == null || (dq = com.bytedance.sdk.component.adexpress.dq.d.d.dq(jVar.tv().d())) == null) ? null : dq.s();
            }
            jSONObject.put("template_Plugin", str);
            jSONObject.put("diff_template_Plugin", str2);
            jSONObject.put("dynamic_configs", jVar.rq());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String dq(j jVar, String str) {
        List<ji> oh;
        if (jVar != null && (oh = jVar.oh()) != null && oh.size() > 0) {
            for (ji jiVar : oh) {
                if (jiVar != null && TextUtils.equals(str, jiVar.dq())) {
                    return jiVar.mn();
                }
            }
        }
        return null;
    }

    public static JSONObject dq(float f2, float f3, boolean z, j jVar) {
        JSONObject ve = jVar.ve();
        try {
            ve.put("xSetting", c.dq(jVar, (AtomicBoolean) null));
            ve.put("xAdInfo", p(jVar));
            JSONObject jSONObject = new JSONObject();
            c.ox(jSONObject);
            jSONObject.put("platform", "android");
            ve.put("xAppInfo", jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(MediaFormat.KEY_WIDTH, f2);
            jSONObject2.put(MediaFormat.KEY_HEIGHT, f3);
            if (z) {
                jSONObject2.put("isLandscape", true);
            }
            ve.put("xSize", jSONObject2);
            ve.put("xCreative", dq(false, jVar));
            ws ny = jVar.ny();
            if (ny != null) {
                String p = ny.p();
                if (!TextUtils.isEmpty(p)) {
                    ve.put("xTemplate", new JSONObject(p));
                    return ve;
                }
                String dq = com.bytedance.sdk.openadsdk.core.nativeexpress.dq.d.dq().dq("ad", ny.dq(), ny.d());
                if (!TextUtils.isEmpty(dq)) {
                    ve.put("xTemplate", new JSONObject(dq));
                    return ve;
                }
                ig.p("TemplateUtils", "template is null");
            }
            return ve;
        } catch (Exception e2) {
            e2.printStackTrace();
            return ve;
        }
    }

    public static JSONObject dq(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            return jSONObject;
        }
        JSONObject jSONObject3 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject3;
        }
        try {
            JSONArray optJSONArray = jSONObject2.optJSONArray("keys");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    String optString = optJSONArray.optString(i);
                    if (jSONObject.has(optString)) {
                        jSONObject3.put(optString, jSONObject.opt(optString));
                    }
                }
                jSONObject3.put("xSetting", jSONObject.opt("xSetting"));
                jSONObject3.put("xAdInfo", jSONObject.opt("xAdInfo"));
                jSONObject3.put("xAppInfo", jSONObject.opt("xAppInfo"));
                jSONObject3.put("xSize", jSONObject.opt("xSize"));
                jSONObject3.put("xTemplate", jSONObject.opt("xTemplate"));
                return jSONObject3;
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject dq(boolean z, j jVar) {
        int[] s;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", jVar.tu());
            if (jVar.wq() != null) {
                jSONObject.put("icon", jVar.wq().dq());
            }
            JSONArray jSONArray = new JSONArray();
            if (jVar.oh() != null) {
                for (int i = 0; i < jVar.oh().size(); i++) {
                    ji jiVar = jVar.oh().get(i);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(MediaFormat.KEY_HEIGHT, jiVar.ox());
                    jSONObject2.put(MediaFormat.KEY_WIDTH, jiVar.d());
                    jSONObject2.put(abn.EXTRA_URL, jiVar.dq());
                    jSONObject2.put("image_key", jiVar.mn());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", jVar.gv());
            jSONObject.put("interaction_type", jVar.y());
            jSONObject.put("is_compliance_template", dq(jVar));
            jSONObject.put(abn.EXTRA_TITLE, jVar.lk());
            jSONObject.put("description", jVar.gl());
            jSONObject.put(abn.EXTRA_SOURCE, jVar.w());
            if (jVar.gm() != null) {
                jSONObject.put("comment_num", jVar.gm().iw());
                jSONObject.put("score", jVar.gm().s());
                jSONObject.put("app_size", jVar.gm().mn());
                jSONObject.put("app", jVar.gm().ia());
            }
            if (pa.q(jVar) != null) {
                JSONObject gh = pa.mp(jVar).gh();
                if (jVar.kr() == 2 && pa.iw(jVar) > 60.0d) {
                    gh.put("video_duration", 60);
                }
                if (com.bytedance.sdk.openadsdk.s.dq.dq(jVar) && (s = pa.s(jVar)) != null && s.length >= 2 && !com.bytedance.sdk.openadsdk.s.dq.p(jVar)) {
                    gh.put("cover_width", s[0]);
                    gh.put("cover_height", s[1]);
                }
                jSONObject.put(MediaFormat.KEY_VIDEO, gh);
            }
            if (uh.fw(jVar)) {
                jSONObject.put("reward_full_play_time", uh.jy(jVar));
                jSONObject.put("reward_full_time_type", 1);
            }
            jSONObject.put("reward_need_click", uh.kx(jVar));
            if (z) {
                if (jVar.g() != null) {
                    jSONObject.put("dynamic_creative", jVar.g().mn());
                }
            } else if (jVar.tv() != null) {
                jSONObject.put("dynamic_creative", jVar.tv().mn());
            }
            jSONObject.put("live_ad", s(jVar));
            dq(jVar, jSONObject);
            if (com.bytedance.sdk.openadsdk.core.live.d.dq().d(jVar)) {
                jSONObject.put("live_interaction_type", 2);
            } else {
                jSONObject.put("live_interaction_type", 1);
            }
            jSONObject.put("adx_name", jVar.rr());
            jSONObject.put("can_show_interactive", jVar.gt());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void dq(j jVar, JSONObject jSONObject) {
        if (com.bytedance.sdk.openadsdk.core.ir.c.ia(jVar) == 7 && gx.dq(jVar)) {
            jVar.zr().dq(jSONObject);
        }
    }

    public static boolean dq(j jVar) {
        return jVar != null && r.ig(jVar) == 2;
    }

    public static Map<String, String> ox(j jVar) {
        HashMap hashMap = null;
        if (jVar == null) {
            return null;
        }
        List<ji> oh = jVar.oh();
        if (oh != null && oh.size() > 0) {
            hashMap = new HashMap();
            for (ji jiVar : oh) {
                if (jiVar != null) {
                    hashMap.put(jiVar.dq(), jiVar.mn());
                }
            }
        }
        return hashMap;
    }

    public static JSONObject ox(float f2, float f3, boolean z, j jVar) {
        String str;
        String str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", "android");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(MediaFormat.KEY_WIDTH, f2);
            jSONObject2.put(MediaFormat.KEY_HEIGHT, f3);
            if (z) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            jSONObject.put("creative", dq(true, jVar));
            String str3 = null;
            if (jVar.g() != null) {
                str = jVar.g().s();
                str2 = jVar.g().iw();
            } else {
                str = null;
                str2 = null;
            }
            if (!TextUtils.isEmpty(str)) {
                str3 = str;
            } else if (jVar.g() != null && com.bytedance.sdk.component.adexpress.dq.d.d.d(jVar.g().d()) != null) {
                str3 = com.bytedance.sdk.component.adexpress.dq.d.d.d(jVar.g().d()).s();
            }
            jSONObject.put("template_Plugin", str3);
            jSONObject.put("diff_template_Plugin", str2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static JSONObject p(j jVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            String fx = jVar.fx();
            if (!TextUtils.isEmpty(fx)) {
                jSONObject.put("cid", fx);
            }
            String dn = jVar.dn();
            if (!TextUtils.isEmpty(dn)) {
                jSONObject.put("log_extra", dn);
            }
            String f2 = com.bytedance.sdk.openadsdk.core.ir.c.f(jVar);
            if (!TextUtils.isEmpty(f2)) {
                jSONObject.put("download_url", f2);
            }
            if (gh.no(jVar)) {
                jSONObject.put("voice_btn_position", gh.jy(jVar));
            }
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    private static JSONObject s(j jVar) {
        JSONObject jSONObject = new JSONObject();
        if (jVar != null && com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            try {
                jSONObject.put("live_show_time", com.bytedance.sdk.openadsdk.core.r.ce.d(jVar));
                jSONObject.put("live_author_nickname", com.bytedance.sdk.openadsdk.core.r.ce.ox(jVar));
                if (com.bytedance.sdk.openadsdk.core.r.ce.p(jVar) > 0) {
                    jSONObject.put("live_author_follower_count", com.bytedance.sdk.openadsdk.core.r.ce.p(jVar));
                }
                if (com.bytedance.sdk.openadsdk.core.r.ce.s(jVar) > 0) {
                    jSONObject.put("live_watch_count", com.bytedance.sdk.openadsdk.core.r.ce.s(jVar));
                }
                jSONObject.put("live_description", com.bytedance.sdk.openadsdk.core.r.ce.iw(jVar));
                jSONObject.put("live_feed_url", com.bytedance.sdk.openadsdk.core.r.ce.mn(jVar));
                jSONObject.put("live_cover_image_url", com.bytedance.sdk.openadsdk.core.r.ce.ia(jVar));
                jSONObject.put("live_avatar_url", com.bytedance.sdk.openadsdk.core.r.ce.kk(jVar));
                jSONObject.put("live_cover_image_width", com.bytedance.sdk.openadsdk.core.r.ce.ig(jVar));
                jSONObject.put("live_cover_image_height", com.bytedance.sdk.openadsdk.core.r.ce.mp(jVar));
                jSONObject.put("live_avatar_width", com.bytedance.sdk.openadsdk.core.r.ce.o(jVar));
                jSONObject.put("live_avatar_height", com.bytedance.sdk.openadsdk.core.r.ce.no(jVar));
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }
}
