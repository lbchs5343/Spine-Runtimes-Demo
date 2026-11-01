package com.bytedance.sdk.component.adexpress.dynamic.p;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.adexpress.d.mp;
import com.bytedance.sdk.component.adexpress.dynamic.p.s;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    private static HashMap<String, String> mn;

    /* renamed from: d, reason: collision with root package name */
    private JSONObject f1772d;
    private JSONObject dq;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.p iw;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.ox ox;
    private dq p;
    private ox s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        float f1773d;
        float dq;
        boolean ox;

        public static dq dq(JSONObject jSONObject) {
            dq dqVar = new dq();
            if (jSONObject != null) {
                dqVar.dq = (float) jSONObject.optDouble(MediaFormat.KEY_WIDTH);
                dqVar.f1773d = (float) jSONObject.optDouble(MediaFormat.KEY_HEIGHT);
                dqVar.ox = jSONObject.optBoolean("isLandscape");
            }
            return dqVar;
        }
    }

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        mn = hashMap;
        hashMap.put(MediaFormat.KEY_SUBTITLE, "description");
        mn.put(abn.EXTRA_SOURCE, "source|app.app_name");
        mn.put("screenshot", "dynamic_creative.screenshot");
    }

    public iw(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        this.dq = jSONObject;
        this.f1772d = jSONObject2;
        this.ox = new com.bytedance.sdk.component.adexpress.dynamic.ox.ox(jSONObject2);
        this.p = dq.dq(jSONObject3);
        this.iw = com.bytedance.sdk.component.adexpress.dynamic.ox.p.dq(jSONObject4);
    }

    private void d(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        com.bytedance.sdk.component.adexpress.dynamic.ox.ox oxVar;
        Object dq2;
        Object dq3;
        Object dq4;
        Object dq5;
        if (iaVar == null || (oxVar = this.ox) == null || (dq2 = oxVar.dq("image.0.url")) == null) {
            return;
        }
        String valueOf = String.valueOf(dq2);
        if (TextUtils.isEmpty(valueOf) || (dq3 = this.ox.dq(abn.EXTRA_TITLE)) == null) {
            return;
        }
        String valueOf2 = String.valueOf(dq3);
        if (TextUtils.isEmpty(valueOf2) || (dq4 = this.ox.dq("description")) == null) {
            return;
        }
        String valueOf3 = String.valueOf(dq4);
        if (TextUtils.isEmpty(valueOf3) || (dq5 = this.ox.dq("icon")) == null) {
            return;
        }
        String valueOf4 = String.valueOf(dq5);
        if (TextUtils.isEmpty(valueOf4)) {
            return;
        }
        Object dq6 = this.ox.dq("app.app_name");
        Object dq7 = this.ox.dq(abn.EXTRA_SOURCE);
        if (dq6 == null && dq7 == null) {
            return;
        }
        if (dq6 == null) {
            dq6 = dq7;
        }
        String valueOf5 = String.valueOf(dq6);
        if (TextUtils.isEmpty(valueOf5)) {
            return;
        }
        iaVar.dq("imageUrl", valueOf);
        iaVar.dq(abn.EXTRA_TITLE, valueOf2);
        iaVar.dq("description", valueOf3);
        iaVar.dq("icon", valueOf4);
        iaVar.dq("app_name", valueOf5);
        iaVar.dq(true);
    }

    private String dq() {
        com.bytedance.sdk.component.adexpress.dynamic.ox.ox oxVar = this.ox;
        return oxVar == null ? "" : String.valueOf(oxVar.dq("adx_name"));
    }

    private String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (String str2 : str.split("\\|")) {
            if (this.ox.d(str2)) {
                String valueOf = String.valueOf(this.ox.dq(str2));
                if (!TextUtils.isEmpty(valueOf)) {
                    return valueOf;
                }
            }
        }
        return "";
    }

    private void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        if (iaVar == null) {
            return;
        }
        int d2 = com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() != null ? com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().jy() : com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext()));
        dq dqVar = this.p;
        float min = dqVar.ox ? dqVar.dq : Math.min(dqVar.dq, d2);
        if (this.p.f1773d == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            iaVar.s(min);
            iaVar.o().s().o(LiveConfigKey.AUTO);
            iaVar.iw(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            iaVar.s(min);
            int d3 = com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), com.bytedance.sdk.component.adexpress.p.mn.ox(com.bytedance.sdk.component.adexpress.p.getContext()));
            dq dqVar2 = this.p;
            iaVar.iw(dqVar2.ox ? dqVar2.f1773d : Math.min(dqVar2.f1773d, d3));
            iaVar.o().s().o("fixed");
        }
    }

    private void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.iw iwVar) {
        if (iwVar == null) {
            return;
        }
        String bl = iwVar.bl();
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            String p = com.bytedance.sdk.component.adexpress.p.mn.p(com.bytedance.sdk.component.adexpress.p.getContext());
            if ("zh".equals(p)) {
                p = "cn";
            }
            if (!TextUtils.isEmpty(p) && iwVar.iw() != null) {
                String optString = iwVar.iw().optString(p);
                if (!TextUtils.isEmpty(optString)) {
                    bl = optString;
                }
            }
        }
        if (TextUtils.isEmpty(bl)) {
            return;
        }
        int indexOf = bl.indexOf("{{");
        int indexOf2 = bl.indexOf("}}");
        if (indexOf < 0 || indexOf2 < 0 || indexOf2 < indexOf) {
            iwVar.ig(bl);
            return;
        }
        String dq2 = dq(bl.substring(indexOf + 2, indexOf2));
        StringBuilder sb = new StringBuilder(bl.substring(0, indexOf));
        if (!TextUtils.isEmpty(dq2)) {
            sb.append(dq2);
        }
        sb.append(bl.substring(indexOf2 + 2));
        iwVar.ig(sb.toString());
    }

    private void dq(com.bytedance.sdk.component.adexpress.dynamic.ox.s sVar, int i) {
        int lastIndexOf;
        if (i == 5 || i == 15 || i == 50 || i == 154) {
            sVar.dq(MediaFormat.KEY_VIDEO);
            String dq2 = kk.dq(MediaFormat.KEY_VIDEO);
            sVar.s().r(dq2);
            String dq3 = kk.dq(MediaFormat.KEY_VIDEO, "clickArea");
            if (!TextUtils.isEmpty(dq3)) {
                sVar.s().jy(dq3);
                sVar.mn().jy(dq3);
            }
            sVar.mn().r(dq2);
            sVar.d(dq2);
            sVar.s().ae();
            return;
        }
        sVar.dq("image");
        String dq4 = kk.dq("image");
        com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = sVar.s();
        s.r(dq4);
        sVar.mn().r(dq4);
        String dq5 = kk.dq("image", "clickArea");
        if (!TextUtils.isEmpty(dq5)) {
            s.jy(dq5);
            sVar.mn().jy(dq5);
        }
        JSONObject y = s.y();
        if (y != null) {
            s.k(y.optString("imageLottieTosPath"));
            s.ig(y.optBoolean("animationsLoop"));
            s.kx(y.optInt("lottieAppNameMaxLength"));
            s.ji(y.optInt("lottieAdDescMaxLength"));
            s.h(y.optInt("lottieAdTitleMaxLength"));
        }
        sVar.d(dq4);
        if (dq4 != null && (lastIndexOf = dq4.lastIndexOf(".")) > 0) {
            String substring = dq4.substring(0, lastIndexOf);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(MediaFormat.KEY_WIDTH, dq(substring + ".width"));
                jSONObject.put(MediaFormat.KEY_HEIGHT, dq(substring + ".height"));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            sVar.p(jSONObject.toString());
        }
        s.fp();
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ox.ia dq(double d2, int i, double d3, String str, mp mpVar) {
        JSONObject jSONObject;
        this.ox.dq();
        try {
            jSONObject = new JSONObject(this.iw.f1765d);
        } catch (JSONException e2) {
            e2.printStackTrace();
            jSONObject = null;
        }
        com.bytedance.sdk.component.adexpress.dynamic.ox.ia dq2 = dq(p.dq(this.dq, jSONObject), (com.bytedance.sdk.component.adexpress.dynamic.ox.ia) null);
        dq(dq2);
        s sVar = new s(d2, i, d3, str, mpVar);
        s.dq dqVar = new s.dq();
        dq dqVar2 = this.p;
        dqVar.dq = dqVar2.dq;
        dqVar.f1777d = dqVar2.f1773d;
        dqVar.ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        sVar.dq(dqVar);
        sVar.dq(dq2, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        sVar.dq();
        com.bytedance.sdk.component.adexpress.dynamic.ox.d dVar = sVar.dq;
        if (dVar.p == 65536.0f) {
            return null;
        }
        return dVar.iw;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ox.ia dq(JSONObject jSONObject) {
        JSONObject jSONObject2;
        String optString = jSONObject.optString("type");
        String optString2 = jSONObject.optString(TTDownloadField.TT_ID);
        JSONObject optJSONObject = jSONObject.optJSONObject("values");
        kk.dq(optString, optJSONObject);
        JSONObject dq2 = kk.dq(optString, kk.dq(jSONObject.optJSONArray("sceneValues")), optJSONObject);
        com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar = new com.bytedance.sdk.component.adexpress.dynamic.ox.ia();
        if (TextUtils.isEmpty(optString2)) {
            iaVar.d(String.valueOf(iaVar.hashCode()));
        } else {
            iaVar.d(optString2);
        }
        if (optJSONObject != null) {
            d(iaVar);
            iaVar.ox((float) optJSONObject.optDouble("x"));
            iaVar.p((float) optJSONObject.optDouble("y"));
            iaVar.s((float) optJSONObject.optDouble(MediaFormat.KEY_WIDTH));
            iaVar.iw((float) optJSONObject.optDouble(MediaFormat.KEY_HEIGHT));
            iaVar.mn(optJSONObject.optInt("remainWidth"));
            com.bytedance.sdk.component.adexpress.dynamic.ox.s sVar = new com.bytedance.sdk.component.adexpress.dynamic.ox.s();
            sVar.dq(optString);
            sVar.d(optJSONObject.optString("data"));
            sVar.ox(optJSONObject.optString("filterData"));
            sVar.p(optJSONObject.optString("dataExtraInfo"));
            com.bytedance.sdk.component.adexpress.dynamic.ox.iw dq3 = com.bytedance.sdk.component.adexpress.dynamic.ox.iw.dq(optJSONObject);
            sVar.dq(dq3);
            com.bytedance.sdk.component.adexpress.dynamic.ox.iw dq4 = com.bytedance.sdk.component.adexpress.dynamic.ox.iw.dq(dq2);
            if (dq4 == null) {
                sVar.d(dq3);
            } else {
                sVar.d(dq4);
            }
            dq(dq3);
            dq(dq4);
            if (TextUtils.equals(optString, "video-image-budget") && (jSONObject2 = this.f1772d) != null) {
                dq(sVar, jSONObject2.optInt("image_mode"));
            }
            String type = sVar.getType();
            com.bytedance.sdk.component.adexpress.dynamic.ox.iw s = sVar.s();
            if (mn.containsKey(type) && !s.v()) {
                s.r(mn.get(type));
            }
            String d2 = s.v() ? sVar.d() : dq(sVar.d());
            if (com.bytedance.sdk.component.adexpress.p.dq()) {
                if (TextUtils.equals(type, "star") || TextUtils.equals(type, "text_star")) {
                    d2 = dq("dynamic_creative.score_exact_i18n|");
                }
                if (TextUtils.equals(type, "score-count") || TextUtils.equals(type, "score-count-type-1") || TextUtils.equals(type, "score-count-type-2")) {
                    d2 = dq("dynamic_creative.comment_num_i18n|");
                }
                if ("root".equals(type) && dq3.hy()) {
                    d2 = dq("image.0.url");
                }
            }
            if (TextUtils.isEmpty(dq()) || !(TextUtils.equals("logo-union", optString) || TextUtils.equals("logo", optString))) {
                sVar.d(d2);
            } else {
                StringBuilder l = tn.l(d2, "adx:");
                l.append(dq());
                sVar.d(l.toString());
            }
            sVar.ox(dq(sVar.ox()));
            iaVar.dq(sVar);
        }
        return iaVar;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ox.ia dq(JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.ox.ia iaVar) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("type");
        if (TextUtils.equals(optString, "custom-component-vessel")) {
            int optInt = jSONObject.optInt("componentId");
            if (this.iw != null) {
                ox oxVar = new ox();
                this.s = oxVar;
                JSONObject dq2 = oxVar.dq(this.iw.dq, optInt, jSONObject);
                if (dq2 != null) {
                    jSONObject = dq2;
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.ox.ia dq3 = dq(jSONObject);
        dq3.dq(iaVar);
        JSONArray optJSONArray = jSONObject.optJSONArray("children");
        if (optJSONArray == null) {
            dq3.dq((List<com.bytedance.sdk.component.adexpress.dynamic.ox.ia>) null);
            return dq3;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONArray optJSONArray2 = optJSONArray.optJSONArray(i);
            if (optJSONArray2 != null) {
                ArrayList arrayList3 = new ArrayList();
                int xi = TextUtils.equals(optString, "tag-group") ? dq3.o().s().xi() : optJSONArray2.length();
                for (int i2 = 0; i2 < xi; i2++) {
                    com.bytedance.sdk.component.adexpress.dynamic.ox.ia dq4 = dq(optJSONArray2.optJSONObject(i2), dq3);
                    if (com.bytedance.sdk.component.adexpress.p.dq() && "skip-with-time".equals(dq3.o().getType()) && !"transparent".equals(dq3.k()) && !TextUtils.isEmpty(dq3.k())) {
                        dq4.ox(dq3.k());
                    }
                    arrayList.add(dq4);
                    arrayList3.add(dq4);
                }
                arrayList2.add(arrayList3);
            }
        }
        if (arrayList.size() > 0) {
            dq3.dq(arrayList);
        }
        if (arrayList2.size() > 0) {
            dq3.d(arrayList2);
        }
        return dq3;
    }
}
