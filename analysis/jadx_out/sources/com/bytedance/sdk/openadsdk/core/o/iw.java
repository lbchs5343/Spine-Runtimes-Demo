package com.bytedance.sdk.openadsdk.core.o;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadEventModel;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw {

    public static class dq extends com.bytedance.sdk.component.o.kk {

        /* renamed from: d, reason: collision with root package name */
        private com.bytedance.sdk.openadsdk.core.o.ox.d.dq f3280d;
        private TTDownloadEventModel dq;
        private j ox;
        private boolean p;
        private Bridge s;

        private dq(TTDownloadEventModel tTDownloadEventModel, boolean z) {
            super("LogTask");
            JSONObject extJson;
            JSONObject materialMeta;
            j jVar;
            this.dq = tTDownloadEventModel;
            this.p = z;
            this.s = no.ia().h();
            TTDownloadEventModel tTDownloadEventModel2 = this.dq;
            if (tTDownloadEventModel2 == null || tTDownloadEventModel2.getExtJson() == null || (extJson = this.dq.getExtJson()) == null) {
                return;
            }
            String optString = extJson.optString("ad_extra_data");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            try {
                JSONObject optJSONObject = new JSONObject(optString).optJSONObject("open_ad_sdk_download_extra");
                com.bytedance.sdk.openadsdk.core.o.ox.d.dq dq = com.bytedance.sdk.openadsdk.core.o.ox.d.dq.dq(optJSONObject);
                this.f3280d = dq;
                if (dq == null) {
                    return;
                }
                dq.dq(tTDownloadEventModel.getTag());
                this.f3280d.d(this.dq.getLabel());
                this.ox = this.f3280d.dq;
                if (op.f3334d >= 4400 && (materialMeta = tTDownloadEventModel.getMaterialMeta()) != null && (jVar = this.ox) != null && !dq(materialMeta, jVar.hg())) {
                    this.ox.i(materialMeta.toString());
                    this.ox.r(String.valueOf(materialMeta.optLong("creative_id")));
                    JSONObject ve = this.ox.ve();
                    optJSONObject.put("material_meta", ve);
                    com.bytedance.sdk.openadsdk.core.o.ox.d.dq dq2 = com.bytedance.sdk.openadsdk.core.o.ox.d.dq.dq(optJSONObject);
                    if (dq2 == null) {
                        return;
                    }
                    this.f3280d = dq2;
                    dq2.d(tTDownloadEventModel.getLabel());
                    this.dq = TTDownloadEventModel.builder().setTag(tTDownloadEventModel.getTag()).setLabel(tTDownloadEventModel.getLabel()).setMaterialMeta(ve).setExtJson(extJson);
                    this.ox = this.f3280d.dq;
                }
            } catch (Exception unused) {
            }
        }

        public static dq dq(TTDownloadEventModel tTDownloadEventModel, boolean z) {
            return new dq(tTDownloadEventModel, z);
        }

        private boolean dq(String str) {
            return this.p || iw.ox(str);
        }

        private boolean dq(JSONObject jSONObject, JSONObject jSONObject2) {
            if (jSONObject != null && jSONObject2 != null) {
                long optLong = jSONObject.optLong(MediationConstant.EXTRA_ADID);
                long optLong2 = jSONObject2.optLong(MediationConstant.EXTRA_ADID);
                String optString = jSONObject.optString("req_id");
                String optString2 = jSONObject2.optString("req_id");
                long optLong3 = jSONObject.optLong("creative_id");
                long optLong4 = jSONObject2.optLong("creative_id");
                String optString3 = jSONObject.optString("origin_req_id");
                String optString4 = jSONObject2.optString("origin_req_id");
                if (optLong != 0 && optLong == optLong2 && optLong3 != 0 && optLong3 == optLong4) {
                    return (TextUtils.isEmpty(optString3) || TextUtils.isEmpty(optString4)) ? TextUtils.equals(optString, optString2) : TextUtils.equals(optString3, optString4);
                }
            }
            return false;
        }

        private Context getContext() {
            return wp.getContext();
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                TTDownloadEventModel tTDownloadEventModel = this.dq;
                if (tTDownloadEventModel == null) {
                    return;
                }
                String tag = tTDownloadEventModel.getTag();
                ig.dq("LibEventLogger", "label: " + this.dq.getLabel() + " tag: " + tag);
                com.bytedance.sdk.openadsdk.core.o.ox.d.dq dqVar = this.f3280d;
                if (dqVar != null && !TextUtils.isEmpty(dqVar.f3291d)) {
                    tag = this.f3280d.f3291d;
                }
                if (this.s != null) {
                    com.bytedance.sdk.openadsdk.core.ir.op<String, Object> dq = new com.bytedance.sdk.openadsdk.core.ir.op().dq(TTDownloadField.TT_TAG_INTERCEPT, tag).dq(TTDownloadField.TT_LABEL, this.dq.getLabel()).dq(TTDownloadField.TT_META, this.ox.ve().toString());
                    Bridge bridge = this.s;
                    hat g2 = hat.g(1);
                    g2.f19148c.put(0, dq);
                    if (((Boolean) bridge.call(2, g2.k(), Boolean.class)).booleanValue()) {
                        return;
                    }
                }
                if (this.f3280d != null && this.ox != null && !TextUtils.isEmpty(this.dq.getTag()) && !TextUtils.isEmpty(this.dq.getLabel())) {
                    JSONObject dq2 = iw.dq(this.dq.getExtJson());
                    String str = this.f3280d.f3291d;
                    if (dq(this.dq.getTag()) && !"click".equals(this.dq.getLabel())) {
                        dq2.remove("open_ad_sdk_download_extra");
                        dq2.putOpt("obm_convert", r.ox(this.ox));
                        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, str, this.dq.getLabel(), dq2);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static JSONObject dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("ad_extra_data");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        try {
            return new JSONObject(optString);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("open_ad_sdk_download_extra");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return "embeded_ad".equals(str) || "draw_ad".equals(str) || "draw_ad_landingpage".equals(str) || "banner_ad".equals(str) || "banner_call".equals(str) || "banner_ad_landingpage".equals(str) || "feed_call".equals(str) || "embeded_ad_landingpage".equals(str) || "interaction".equals(str) || "interaction_call".equals(str) || "interaction_landingpage".equals(str) || "slide_banner_ad".equals(str) || "splash_ad".equals(str) || "fullscreen_interstitial_ad".equals(str) || "splash_ad_landingpage".equals(str) || "rewarded_video".equals(str) || "rewarded_video_landingpage".equals(str) || "openad_sdk_download_complete_tag".equals(str) || "fullscreen_interstitial_ad_landingpage".equals(str) || "feed_video_middle_page".equals(str) || "stream".equals(str);
    }
}
