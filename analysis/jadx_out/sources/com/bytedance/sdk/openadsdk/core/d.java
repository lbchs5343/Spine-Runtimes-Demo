package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.le.d;
import com.bytedance.sdk.openadsdk.core.r.bu;
import com.bytedance.sdk.openadsdk.core.r.cv;
import com.bytedance.sdk.openadsdk.core.r.fd;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.ha;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.ob;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.r.vf;
import com.bytedance.sdk.openadsdk.core.r.vw;
import com.bytedance.sdk.openadsdk.core.r.ws;
import com.bytedance.sdk.openadsdk.core.r.yy;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static int d(com.bytedance.sdk.openadsdk.core.r.j jVar, int i) {
        if (i != 3 && i != 4 && i != 0) {
            if (!com.bytedance.sdk.openadsdk.core.r.ce.dq(jVar)) {
                return TTAdConstant.LIVE_AD_CODE;
            }
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.r.ce.mn(jVar))) {
                return TTAdConstant.LIVE_FEED_URL_CODE;
            }
        }
        return 200;
    }

    public static com.bytedance.sdk.openadsdk.core.r.p d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.r.p pVar = new com.bytedance.sdk.openadsdk.core.r.p();
        pVar.ox(jSONObject.optString("app_name"));
        pVar.p(jSONObject.optString("package_name"));
        pVar.d(jSONObject.optString("download_url"));
        pVar.dq(jSONObject.optInt("score", 4));
        pVar.d(jSONObject.optInt("comment_num", 0));
        pVar.ox(jSONObject.optInt("app_size", 0));
        pVar.dq(jSONObject.optString("quick_app_url", ""));
        return pVar;
    }

    private static int dq(com.bytedance.sdk.openadsdk.core.r.fw fwVar) {
        if (fwVar == null) {
            return 200;
        }
        if (!TextUtils.isEmpty(fwVar.dq()) && !TextUtils.isEmpty(fwVar.d())) {
            return (fwVar.ox() == 1 || fwVar.ox() == 2) ? 200 : 403;
        }
        if (TextUtils.isEmpty(fwVar.dq())) {
            return 402;
        }
        return TTAdConstant.DEEPLINK_FALL_BACK_CODE;
    }

    private static int dq(com.bytedance.sdk.openadsdk.core.r.j jVar) {
        if (jVar.gv() != 166 || !com.bytedance.sdk.openadsdk.core.r.ce.dq(jVar) || op.p()) {
            return 200;
        }
        com.bytedance.sdk.component.utils.ig.d("穿山甲sdk没有集成点播/直播aar，不支持直播物料");
        return TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE;
    }

    public static int dq(com.bytedance.sdk.openadsdk.core.r.j jVar, int i) {
        if (TextUtils.isEmpty(jVar.fx()) || jVar.fx().length() <= 1) {
            return 401;
        }
        int dq = dq(jVar.kf());
        if (dq != 200) {
            return dq;
        }
        int dq2 = dq(jVar);
        if (dq2 != 200) {
            return dq2;
        }
        int y = jVar.y();
        if (y == 2 || y == 3) {
            if (TextUtils.isEmpty(jVar.ae())) {
                return TTAdConstant.LANDING_PAGE_TYPE_CODE;
            }
        } else if (y == 4) {
            dq2 = dq(jVar.gm());
            if (dq2 != 200) {
                return dq2;
            }
        } else if (y == 5 && TextUtils.isEmpty(jVar.ux())) {
            return TTAdConstant.INTERACTION_TYPE_CODE;
        }
        int gv = jVar.gv();
        if (gv != 2 && gv != 3 && gv != 4) {
            if (gv == 5 || gv == 15) {
                return pa.kk(jVar);
            }
            if (gv != 16) {
                return gv != 166 ? dq2 : d(jVar, i);
            }
        }
        return dq(jVar.oh());
    }

    private static int dq(com.bytedance.sdk.openadsdk.core.r.p pVar) {
        if (pVar == null) {
            return TTAdConstant.DOWNLOAD_APP_INFO_CODE;
        }
        if (TextUtils.isEmpty(pVar.d())) {
            return TTAdConstant.DOWNLOAD_URL_CODE;
        }
        return 200;
    }

    private static int dq(List<com.bytedance.sdk.openadsdk.core.r.ji> list) {
        if (list == null) {
            return TTAdConstant.IMAGE_LIST_CODE;
        }
        if (list.size() <= 0) {
            return TTAdConstant.IMAGE_LIST_SIZE_CODE;
        }
        for (com.bytedance.sdk.openadsdk.core.r.ji jiVar : list) {
            if (jiVar == null) {
                return TTAdConstant.IMAGE_CODE;
            }
            if (TextUtils.isEmpty(jiVar.dq())) {
                return TTAdConstant.IMAGE_URL_CODE;
            }
        }
        return 200;
    }

    public static Pair<com.bytedance.sdk.openadsdk.core.r.dq, ArrayList<Integer>> dq(JSONObject jSONObject, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, long j) {
        if (jSONObject == null) {
            return null;
        }
        try {
            com.bytedance.sdk.openadsdk.core.r.dq dqVar = new com.bytedance.sdk.openadsdk.core.r.dq();
            dqVar.dq(jSONObject.optString("request_id"));
            dqVar.dq(jSONObject.optInt("ret"));
            dqVar.d(jSONObject.optString("message"));
            String optString = jSONObject.optString("auction_price");
            com.bytedance.sdk.openadsdk.core.ir.o.d(jSONObject.optString("client_ipv4", ""));
            boolean optBoolean = jSONObject.optBoolean("need_get_materials");
            if (dqVar.dq() != 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            ArrayList arrayList = new ArrayList();
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    com.bytedance.sdk.openadsdk.core.r.j dq = dq(optJSONArray.optJSONObject(i), dVar, nhVar);
                    int dq2 = dq(dq, dVar != null ? dVar.k() : 0);
                    boolean le = dq.le();
                    String wp = dq.wp();
                    if (dq2 != 200 && ((!optBoolean && !le) || TextUtils.isEmpty(wp))) {
                        arrayList.add(Integer.valueOf(dq2));
                    }
                    dq.ji(optString);
                    dq.d(j);
                    dq.p(optBoolean);
                    dqVar.dq(dq);
                }
            }
            return new Pair<>(dqVar, arrayList);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static ha dq(JSONObject jSONObject, int i) {
        if (jSONObject == null) {
            return null;
        }
        ha haVar = new ha();
        double optDouble = jSONObject.optDouble("splash_clickarea", 1.0d);
        haVar.dq((int) ((optDouble == 1.0d || optDouble == 2.0d) ? optDouble : 1.0d));
        haVar.mn(jSONObject.optInt("splash_style_id", 0));
        haVar.dq(jSONObject.optString("splash_clicktext", ""));
        haVar.d(jSONObject.optInt("area_height", 50));
        haVar.ox(jSONObject.optInt("area_width", 236));
        if (i == 2) {
            haVar.p(jSONObject.optInt("area_blank_height", 32));
        } else {
            haVar.p(jSONObject.optInt("area_blank_height", 82));
        }
        haVar.s(jSONObject.optInt("half_blank_height", 56));
        haVar.d(jSONObject.optString("btn_background_dest_color", "#008DEA"));
        haVar.ox(jSONObject.optString("top_splash_clicktext"));
        haVar.dq(jSONObject.optJSONObject("text_config"));
        haVar.d(jSONObject.optJSONObject("top_text_config"));
        haVar.ia(jSONObject.optInt("sliding_distance", 5));
        haVar.dq(jSONObject.optJSONObject("slide_area"), i);
        haVar.iw(jSONObject.optInt("splash_load_time_optimization"));
        return haVar;
    }

    public static com.bytedance.sdk.openadsdk.core.r.j dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return dq(jSONObject, null, null);
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }

    public static com.bytedance.sdk.openadsdk.core.r.j dq(JSONObject jSONObject, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar) {
        JSONObject optJSONObject;
        if (jSONObject == null) {
            return null;
        }
        if (nhVar != null && dVar != null) {
            wp.d().ox(jSONObject.optInt("settings_open", 1));
        }
        com.bytedance.sdk.openadsdk.core.r.j jVar = new com.bytedance.sdk.openadsdk.core.r.j();
        jVar.n(jSONObject.optString("s_sig_ts"));
        jVar.iw(jSONObject.optLong("ad_rec_stamp", 0L));
        jVar.ji(jSONObject.optInt("interaction_type"));
        jVar.q(jSONObject.optString("target_url"));
        jVar.ia(jSONObject.optInt("use_media_video_player", 0));
        jVar.bl(jSONObject.optInt("landing_scroll_percentage", -1));
        jVar.jy(jSONObject.optString("gecko_id"));
        jVar.iw(jSONObject.optBoolean("is_from_local_cache"));
        jVar.u(jSONObject.optInt("is_from_cache_type", -1));
        if (jSONObject.has("set_click_type")) {
            JSONObject optJSONObject2 = jSONObject.optJSONObject("set_click_type");
            jVar.d(optJSONObject2.optDouble("cta", 2.0d));
            jVar.dq(optJSONObject2.optDouble("other", 2.0d));
        }
        jVar.mn(jSONObject.optInt("feed_video_finish_type"));
        JSONObject optJSONObject3 = jSONObject.optJSONObject("extension");
        jVar.p(optJSONObject3);
        jVar.s(jSONObject.optJSONObject("overlay"));
        jVar.r(jSONObject.optString(MediationConstant.EXTRA_ADID));
        jVar.mp(jSONObject.optString(abn.EXTRA_SOURCE));
        jVar.h(jSONObject.optString("package_name"));
        jVar.gh(jSONObject.optInt("play_bar_show_time", -200));
        JSONObject optJSONObject4 = jSONObject.optJSONObject("icon");
        jVar.s(jSONObject.optBoolean("screenshot", false));
        jVar.f(jSONObject.optInt("play_bar_style", 0));
        jVar.kx(jSONObject.optString("market_url", ""));
        jVar.q(jSONObject.optInt("video_adaptation", 0));
        jVar.ig(jSONObject.optInt("feed_video_opentype", 0));
        jVar.mp(jSONObject.optInt("feed_reward_type", -1));
        jVar.iw(jSONObject.optJSONObject("session_params"));
        jVar.ji(jSONObject.optString("auction_price", ""));
        jVar.l(jSONObject.optInt("no_default_ttdsp_price", 0));
        jVar.kk(jSONObject.optInt("render_control", nhVar != null ? nhVar.mn : 1));
        if (optJSONObject4 != null) {
            com.bytedance.sdk.openadsdk.core.r.ji jiVar = new com.bytedance.sdk.openadsdk.core.r.ji();
            jiVar.dq(optJSONObject4.optString(abn.EXTRA_URL));
            jiVar.d(optJSONObject4.optInt(MediaFormat.KEY_HEIGHT));
            jiVar.dq(optJSONObject4.optInt(MediaFormat.KEY_WIDTH));
            jVar.dq(jiVar);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("image");
        if (optJSONArray != null) {
            int i = 0;
            while (i < optJSONArray.length()) {
                com.bytedance.sdk.openadsdk.core.r.ji jiVar2 = new com.bytedance.sdk.openadsdk.core.r.ji();
                JSONObject optJSONObject5 = optJSONArray.optJSONObject(i);
                jiVar2.dq(optJSONObject5.optString(abn.EXTRA_URL));
                jiVar2.d(optJSONObject5.optInt(MediaFormat.KEY_HEIGHT));
                jiVar2.dq(optJSONObject5.optInt(MediaFormat.KEY_WIDTH));
                com.bytedance.sdk.openadsdk.core.r.j jVar2 = jVar;
                jiVar2.dq(optJSONObject5.optInt(MediationConstant.EXTRA_DURATION));
                jiVar2.dq(optJSONObject5.optBoolean("image_preview"));
                jiVar2.d(optJSONObject5.optString("image_key"));
                jVar2.d(jiVar2);
                i++;
                jVar = jVar2;
            }
        }
        final com.bytedance.sdk.openadsdk.core.r.j jVar3 = jVar;
        JSONArray optJSONArray2 = jSONObject.optJSONArray("show_url");
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                jVar3.en().add(optJSONArray2.optString(i2));
            }
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("click_url");
        if (optJSONArray3 != null) {
            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                jVar3.qz().add(optJSONArray3.optString(i3));
            }
        }
        JSONObject optJSONObject6 = jSONObject.optJSONObject("click_area");
        if (optJSONObject6 != null) {
            com.bytedance.sdk.openadsdk.core.r.ia iaVar = new com.bytedance.sdk.openadsdk.core.r.ia();
            iaVar.dq = optJSONObject6.optBoolean("click_upper_content_area", true);
            iaVar.f3449d = optJSONObject6.optBoolean("click_upper_non_content_area", true);
            iaVar.ox = optJSONObject6.optBoolean("click_lower_content_area", true);
            iaVar.p = optJSONObject6.optBoolean("click_lower_non_content_area", true);
            iaVar.s = optJSONObject6.optBoolean("click_button_area", true);
            iaVar.iw = optJSONObject6.optBoolean("click_video_area", true);
            jVar3.dq(iaVar);
        }
        JSONObject optJSONObject7 = jSONObject.optJSONObject("adslot");
        jVar3.dq(optJSONObject7 != null ? com.bytedance.sdk.openadsdk.core.ir.h.dq(optJSONObject7.toString()) : dVar);
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.kx(jSONObject.optJSONObject("extension")));
        jVar3.fw(jSONObject.optInt("intercept_flag", 0));
        jVar3.cd(jSONObject.optInt("web_inspector", 0));
        jVar3.f(jSONObject.optString("phone_num"));
        jVar3.fw(jSONObject.optString(abn.EXTRA_TITLE));
        jVar3.ox(jSONObject.optLong("download_num"));
        jVar3.cd(jSONObject.optString("description"));
        jVar3.gh(jSONObject.optString("button_text"));
        jVar3.jy(jSONObject.optInt("ad_logo", 1));
        jVar3.dq(jSONObject.optBoolean("isDirectDownload", false));
        String optString = jSONObject.optString("ext");
        jVar3.i(optString);
        try {
            if (!TextUtils.isEmpty(optString)) {
                JSONObject jSONObject2 = new JSONObject(optString);
                jVar3.le(jSONObject2.optString("req_id"));
                jVar3.iw(jSONObject2.optString("req_id"));
                jVar3.k(jSONObject2.optString(MediationConstant.EXTRA_ADID));
                com.bytedance.sdk.openadsdk.core.ir.o.dq(jSONObject2.optLong("global_did", -1L));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        jVar3.kk(jSONObject.optString("price"));
        jVar3.op(jSONObject.optInt("image_mode"));
        jVar3.t(jSONObject.optInt("orientation", 1));
        jVar3.dq((float) jSONObject.optDouble("aspect_ratio", 100.0d));
        jVar3.d((float) jSONObject.optDouble("aspect_margin", 0.07000000029802322d));
        jVar3.ox((float) jSONObject.optDouble("corner_radius", 0.0d));
        JSONObject optJSONObject8 = jSONObject.optJSONObject("app");
        JSONObject optJSONObject9 = jSONObject.optJSONObject("download_sdk_conf");
        jVar3.dq(d(optJSONObject8));
        jVar3.dq(iw(optJSONObject9));
        JSONObject optJSONObject10 = jSONObject.optJSONObject("deep_link");
        if (optJSONObject10 != null) {
            jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.fw(optJSONObject10));
        }
        jVar3.dq(new uh(jSONObject));
        jVar3.dq(new l(jSONObject));
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.ig(jSONObject));
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.gh(jSONObject));
        jVar3.dq(new cv(jSONObject));
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.dislike.ox.d(jSONObject, com.bytedance.sdk.openadsdk.core.dislike.d.dq()));
        jVar3.dq(new ob(jSONObject));
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.op(jSONObject));
        jVar3.dq(new gx(jSONObject));
        jVar3.dq(new t(jSONObject));
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.bl(jSONObject));
        jVar3.ir(jSONObject.optInt("count_down"));
        jVar3.p(jSONObject.optLong("expiration_time"));
        jVar3.ce(jSONObject.optString("_child_metas"));
        jVar3.e(jSONObject.optString("src_req_id"));
        jVar3.h(jSONObject.optInt("video_encode_type", 0));
        jVar3.yy(jSONObject.optInt("player_type", 0));
        if (!op.p() && jVar3.mx() == 1) {
            jVar3.h(0);
            jVar3.yy(0);
        }
        JSONObject optJSONObject11 = jSONObject.optJSONObject("download_conf");
        if (optJSONObject11 != null) {
            jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.r(optJSONObject11));
        }
        jVar3.c(jSONObject.optInt("if_both_open"));
        jVar3.ce(jSONObject.optInt("if_double_deeplink"));
        JSONObject optJSONObject12 = jSONObject.optJSONObject("app_manage");
        if (optJSONObject12 != null) {
            jVar3.dq(s(optJSONObject12));
            jVar3.ig(optJSONObject12.toString());
        }
        JSONObject optJSONObject13 = jSONObject.optJSONObject("easy_dl_dialog");
        if (optJSONObject13 != null) {
            jVar3.dq(ox(optJSONObject13));
        }
        JSONObject optJSONObject14 = jSONObject.optJSONObject("easy_pl_material");
        if (optJSONObject14 != null) {
            jVar3.mn(optJSONObject14);
            jVar3.dq(p(optJSONObject14));
        }
        jVar3.kx(jSONObject.optString("lp_down_rule", "0").equals("1") ? 1 : 0);
        String optString2 = jSONObject.optString("app_manage_type", "0");
        if (optString2.equals("1")) {
            jVar3.e(1);
        } else if (optString2.equals("2")) {
            jVar3.e(2);
        } else {
            jVar3.e(0);
        }
        jVar3.dq(mn(jSONObject.optJSONObject("media_ext")));
        jVar3.er(jSONObject.optInt("landing_page_type"));
        JSONObject optJSONObject15 = jSONObject.optJSONObject("tpl_info");
        if (optJSONObject15 != null) {
            j.dq dqVar = new j.dq();
            dqVar.d(optJSONObject15.optString(TTDownloadField.TT_ID));
            dqVar.ox(optJSONObject15.optString(TTDownloadField.TT_MD5));
            dqVar.p(optJSONObject15.optString(abn.EXTRA_URL));
            dqVar.s(optJSONObject15.optString("data"));
            dqVar.iw(optJSONObject15.optString("diff_data"));
            dqVar.mn(optJSONObject15.optString("dynamic_creative"));
            dqVar.dq(optJSONObject15.optString("version"));
            dqVar.ia(optJSONObject15.optString("material_type"));
            dqVar.kk(optJSONObject15.optString("ugen_url"));
            dqVar.o(optJSONObject15.optString("ugen_md5"));
            dqVar.ig(optJSONObject15.optString("express_gesture_priority"));
            dqVar.no(optJSONObject15.optString("engine_version"));
            jVar3.dq(dqVar);
        }
        JSONObject optJSONObject16 = jSONObject.optJSONObject("tpl_info_v3");
        if (optJSONObject16 != null) {
            ws dq = ws.dq(optJSONObject16);
            jVar3.dq(dq);
            com.bytedance.sdk.openadsdk.core.nativeexpress.dq.d.dq().dq(dq, String.valueOf(com.bytedance.sdk.openadsdk.core.ir.c.kk(jVar3)), "ad");
        }
        JSONObject optJSONObject17 = jSONObject.optJSONObject("dynamic_creative");
        if (optJSONObject17 != null) {
            jVar3.ox(optJSONObject17);
        }
        JSONObject optJSONObject18 = jSONObject.optJSONObject("middle_tpl_info");
        if (optJSONObject18 != null) {
            j.dq dqVar2 = new j.dq();
            dqVar2.d(optJSONObject18.optString("middle_id"));
            dqVar2.ox(optJSONObject18.optString("middle_md5"));
            dqVar2.p(optJSONObject18.optString("middle_url"));
            dqVar2.s(optJSONObject18.optString("middle_data"));
            dqVar2.iw(optJSONObject18.optString("middle_diff_data"));
            dqVar2.mn(optJSONObject18.optString("middle_dynamic_creative"));
            dqVar2.dq(optJSONObject18.optString("middle_version"));
            jVar3.d(dqVar2);
        }
        jVar3.o(jSONObject.optInt("if_block_lp", 0));
        jVar3.r(jSONObject.optInt("cache_sort", 1));
        jVar3.i(jSONObject.optInt("if_sp_cache", 1));
        jVar3.le(jSONObject.optInt("splash_timeout_stage", 1));
        jVar3.s(jSONObject.optInt("page_render_type", 0));
        if (jVar3.cd() == 1 && (optJSONObject = jSONObject.optJSONObject("ugeno")) != null) {
            com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dq2 = dq(optJSONObject, jVar3);
            jVar3.dq(dq2);
            if (!com.bytedance.sdk.openadsdk.core.ugeno.mn.dq().d(dq2.dq(), dq2.d())) {
                com.bytedance.sdk.openadsdk.core.le.d.dq(dq2, (d.InterfaceC0169d) null);
            }
        }
        jVar3.p(jSONObject.optInt("native_lp_tpl_id"));
        jVar3.d(jSONObject.optString("native_lp_data"));
        jVar3.ox(jSONObject.optString("native_lp_ugen_url"));
        jVar3.p(jSONObject.optString("native_lp_ugen_md5"));
        jVar3.d(jSONObject.optBoolean("native_lp_is_preload"));
        jVar3.dq(jSONObject.optString("download_url"));
        if (jVar3.q()) {
            JSONObject optJSONObject19 = jSONObject.optJSONObject("native_lp_content");
            if (optJSONObject19 != null) {
                jVar3.d(optJSONObject19);
            } else {
                com.bytedance.sdk.openadsdk.core.le.d.dq(jVar3.o(), new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.d.1
                    @Override // com.bytedance.sdk.openadsdk.core.le.d.dq
                    public void dq(int i4, String str) {
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.le.d.dq
                    public void dq(JSONObject jSONObject3) {
                        com.bytedance.sdk.openadsdk.core.r.j.this.d(jSONObject3);
                    }
                });
            }
        }
        jVar3.iw(jSONObject.optInt("promotion_type"));
        JSONObject optJSONObject20 = jSONObject.optJSONObject("dylite_info");
        if (optJSONObject20 != null) {
            com.bytedance.sdk.openadsdk.core.ugeno.o.dq dqVar3 = new com.bytedance.sdk.openadsdk.core.ugeno.o.dq();
            JSONArray optJSONArray4 = optJSONObject20.optJSONArray("product_infos");
            if (optJSONArray4 != null) {
                dqVar3.dq(optJSONArray4);
            }
            JSONObject optJSONObject21 = optJSONObject20.optJSONObject("coupon");
            if (optJSONObject21 != null) {
                dqVar3.dq(optJSONObject21);
            }
            JSONObject optJSONObject22 = optJSONObject20.optJSONObject("render_config");
            if (optJSONObject22 != null) {
                dqVar3.d(optJSONObject22);
            }
            JSONObject optJSONObject23 = optJSONObject20.optJSONObject("live_room_data");
            if (optJSONObject23 != null) {
                dqVar3.ox(optJSONObject23);
            }
            JSONObject optJSONObject24 = optJSONObject20.optJSONObject("ec_mall_conf");
            if (optJSONObject24 != null) {
                dqVar3.p(optJSONObject24);
            }
            jVar3.dq(dqVar3);
        }
        JSONObject optJSONObject25 = jSONObject.optJSONObject("render");
        if (optJSONObject25 != null) {
            jVar3.wn(optJSONObject25.optInt("render_sequence", 0));
            jVar3.nh(optJSONObject25.optInt("backup_render_control", 1));
            jVar3.vf(optJSONObject25.optInt("render_thread", 0));
            jVar3.ob(optJSONObject25.optInt("reserve_time", 100));
            jVar3.j(optJSONObject25.optInt("valid_uchain", 0));
        }
        JSONObject optJSONObject26 = jSONObject.optJSONObject("splash_control");
        if (optJSONObject26 != null) {
            jVar3.dq(dq(optJSONObject26, jVar3.ho()));
        }
        jVar3.bl(jSONObject.optString("ad_info"));
        jVar3.kk(jSONObject.optBoolean("close_on_dislike", false));
        jVar3.op(jSONObject.optString("adx_name"));
        jVar3.uh(jSONObject.optInt("endcard_close_time", 0));
        jVar3.xz(jSONObject.optInt("proportion_watching", 100));
        jVar3.cv(jSONObject.optInt("video_skip_result", 3));
        com.bytedance.sdk.openadsdk.core.r.ce ceVar = new com.bytedance.sdk.openadsdk.core.r.ce(jSONObject);
        jVar3.dq(ceVar);
        if (ceVar.dq()) {
            if (op.p()) {
                jVar3.yy(-2);
            } else {
                jVar3.yy(0);
            }
        }
        jVar3.dq(new pa(jSONObject));
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.le(jSONObject));
        jVar3.dq(new com.bytedance.sdk.openadsdk.core.r.n(jSONObject));
        dq(jVar3, jSONObject);
        JSONObject optJSONObject27 = jSONObject.optJSONObject("skip_control");
        if (optJSONObject27 != null) {
            fd fdVar = new fd();
            fdVar.dq(optJSONObject27.optInt("position", 2));
            fdVar.d(optJSONObject27.optInt("left_or_right_margin", 16));
            fdVar.ox(optJSONObject27.optInt("top_or_bottom_margin", 30));
            fdVar.p(optJSONObject27.optInt("skip_style", 1));
            jVar3.dq(fdVar);
        }
        jVar3.gx(jSONObject.optInt("shake_value", 13));
        jVar3.dc(jSONObject.optInt("deep_shake_value"));
        jVar3.by(jSONObject.optInt("rotation_angle", 50));
        jVar3.n(jSONObject.optInt("dynamic_join_type", 0));
        jVar3.k(jSONObject.optInt("calculation_method", 0));
        JSONObject optJSONObject28 = jSONObject.optJSONObject("splash_compliance_bar");
        if (optJSONObject28 != null) {
            vw vwVar = new vw();
            vwVar.dq(optJSONObject28.optInt("show_type", 0));
            vwVar.d(optJSONObject28.optInt("blank", 90));
            vwVar.ox(optJSONObject28.optInt("half_blank", 90));
            jVar3.dq(vwVar);
        }
        jVar3.v(jSONObject.optInt("show_poll_time", Integer.MIN_VALUE));
        jVar3.ha(jSONObject.optInt("click_send_type", 0));
        jVar3.o(jSONObject.optString("adm"));
        jVar3.ox(jSONObject.optBoolean("is_cache"));
        jVar3.mn(jSONObject.optString("log_ext"));
        jVar3.s(jSONObject.optString("cache_ext"));
        String optString3 = jSONObject.optString("req_id");
        if (!TextUtils.isEmpty(optString3) && !TextUtils.isEmpty(jVar3.i())) {
            jVar3.iw(optString3);
        }
        jVar3.dq(jSONObject.optLong("cache_time"));
        jVar3.ia(jSONObject.optString("material_key"));
        jVar3.p(jSONObject.optBoolean("need_get_materials"));
        jVar3.d(jSONObject.optLong("s_send_ts"));
        jVar3.dq(io.dq(jSONObject.optJSONObject("wc_miniapp_info")));
        jVar3.u(jSONObject.optString("live_room_id", ""));
        jVar3.ds(jSONObject.optInt("ad_type", 0));
        jVar3.vw(jSONObject.optInt("live_interaction_type", 1));
        jVar3.no(jSONObject.optString("ec_schema", ""));
        jVar3.no(jSONObject.optInt("draw_video_playcount", 2));
        JSONObject optJSONObject29 = jSONObject.optJSONObject("dynamic_join_coupon_style");
        if (optJSONObject29 != null) {
            com.bytedance.sdk.openadsdk.core.r.jy jyVar = new com.bytedance.sdk.openadsdk.core.r.jy();
            jyVar.dq(optJSONObject29.optInt("style_type"));
            jyVar.dq(optJSONObject29.optString("image_url"));
            jyVar.d(optJSONObject29.optInt("position"));
            jyVar.dq(optJSONObject29.optDouble("image_height"));
            jyVar.d(optJSONObject29.optString("image_gif_url"));
            jyVar.d(optJSONObject29.optDouble("image_scale_rate"));
            jyVar.ox(optJSONObject29.optDouble("image_gif_aspect_ratio"));
            jVar3.dq(jyVar);
        }
        jVar3.c(jSONObject.optString("ecom_live_params"));
        JSONObject optJSONObject30 = jSONObject.optJSONObject("group_info");
        if (optJSONObject30 != null) {
            vf vfVar = new vf();
            vfVar.dq(optJSONObject30.optString("group_id"));
            vfVar.d(optJSONObject30.optString("group_tag"));
            vfVar.ox(optJSONObject30.optString("card_tag"));
            jVar3.dq(vfVar);
        }
        jVar3.dq(com.bytedance.sdk.openadsdk.core.r.q.dq(jSONObject.optJSONObject("coupon")));
        jVar3.dq(com.bytedance.sdk.openadsdk.core.r.er.dq(jSONObject.optJSONObject("live_info")));
        jVar3.dq(yy.dq(jSONObject.optJSONObject("saas_info")));
        JSONObject optJSONObject31 = jSONObject.optJSONObject("video_config");
        if (optJSONObject31 != null) {
            bu buVar = new bu();
            buVar.dq(optJSONObject31.optInt("video_adapter_type", 1));
            buVar.d(optJSONObject31.optInt("video_mute_type", 1));
            jVar3.dq(buVar);
        }
        JSONObject optJSONObject32 = jSONObject.optJSONObject("click_trigger_config");
        if (optJSONObject32 != null) {
            com.bytedance.sdk.openadsdk.core.r.no noVar = new com.bytedance.sdk.openadsdk.core.r.no();
            noVar.dq(optJSONObject32.optInt("click_trigger_type"));
            noVar.dq((float) optJSONObject32.optDouble("shake_start_time", 0.0d));
            noVar.d((float) optJSONObject32.optDouble("shake_end_time", 2.147483648E9d));
            jVar3.dq(noVar);
        }
        jVar3.wp(jSONObject.optInt("calculation_method_twist"));
        jVar3.ir(jSONObject.optString("dynamic_configs"));
        jVar3.jw(jSONObject.optInt("gnd_prefetch_timing"));
        jVar3.er(jSONObject.optString("gnd_prefetch_cache_key"));
        Map<String, Object> ps = jVar3.ps();
        if (ps == null) {
            ps = new HashMap<>();
            jVar3.dq(ps);
        }
        String ao = jVar3.ao();
        if (ao != null) {
            ps.put("ad_token", ao);
            s.dq().d(ao);
        }
        if (optJSONObject3 != null && optJSONObject3.optInt("style_category") != 0) {
            ps.put("style_category", Integer.valueOf(optJSONObject3.optInt("style_category")));
        }
        jVar3.fd(jSONObject.optInt("click_freq"));
        jVar3.bu(jSONObject.optInt("if_lpua_package"));
        jVar3.kk(jSONObject.optJSONObject("twist_config"));
        jVar3.o(jSONObject.optJSONObject("shake_interact_conf"));
        jVar3.no(jSONObject.optJSONObject("twist_interact_conf"));
        jVar3.dq(com.bytedance.sdk.openadsdk.core.r.h.dq(jSONObject));
        jVar3.ia(jSONObject.optJSONObject("landing_page_conf"));
        jVar3.dq(jSONObject.optJSONObject("sdk_derive_info"));
        jVar3.dq(jSONObject.optInt("disable_video_join"));
        jVar3.d(jSONObject.optInt("disable_top_bar"));
        jVar3.ox(jSONObject.optInt("disable_rtn_button"));
        return jVar3;
    }

    private static com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dq(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.r.j jVar) {
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar = new com.bytedance.sdk.openadsdk.core.ugeno.mn.dq();
        dqVar.dq(jSONObject.optString(TTDownloadField.TT_ID));
        dqVar.d(jSONObject.optString(TTDownloadField.TT_MD5));
        dqVar.ox(jSONObject.optString(abn.EXTRA_URL));
        dqVar.dq(jSONObject.optInt("scene"));
        return dqVar;
    }

    private static void dq(com.bytedance.sdk.openadsdk.core.r.j jVar, JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.r.fw kf;
        if (jVar == null || jSONObject == null) {
            return;
        }
        if ((com.bytedance.sdk.openadsdk.core.r.ce.dq(jVar) || gx.dq(jVar)) && (kf = jVar.kf()) != null) {
            JSONObject optJSONObject = jSONObject.optJSONObject("reward_live_deep_link_params");
            com.bytedance.sdk.openadsdk.core.r.c cVar = new com.bytedance.sdk.openadsdk.core.r.c();
            if (optJSONObject != null) {
                cVar.dq(optJSONObject.optString("reward_live_deep_link_user_id"));
                cVar.s(optJSONObject.optString("reward_live_deep_link_request_id"));
                cVar.d(optJSONObject.optString("reward_live_deep_link_room_id"));
                cVar.ox(optJSONObject.optString("reawrd_live_short_touch_params"));
                cVar.p(optJSONObject.optString("reawrd_live_extra_pangle_scheme_params"));
                cVar.dq(optJSONObject.optLong("reward_live_last_time"));
                jVar.dq(cVar);
            } else {
                Map<String, String> dq = com.bytedance.sdk.openadsdk.core.ir.er.dq(kf.dq());
                if (dq == null || dq.size() <= 0) {
                    return;
                }
                cVar.dq(dq.get("user_id"));
                cVar.s(dq.get("request_id"));
                cVar.d(dq.get("room_id"));
                cVar.ox(dq.get("live_short_touch_params"));
                cVar.p(dq.get("extra_pangle_scheme_params"));
                jVar.dq(cVar);
            }
            jVar.ia(jSONObject.optBoolean("not_valid_download_url", false));
        }
    }

    private static com.bytedance.sdk.openadsdk.core.r.i iw(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.r.i iVar = new com.bytedance.sdk.openadsdk.core.r.i();
        iVar.dq(jSONObject.optInt("ah", 1));
        iVar.d(jSONObject.optInt("am", 1));
        return iVar;
    }

    private static Map<String, Object> mn(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!TextUtils.isEmpty(next)) {
                hashMap.put(next, jSONObject.opt(next));
            }
        }
        return hashMap;
    }

    public static com.bytedance.sdk.openadsdk.core.r.wp ox(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.r.wp wpVar = new com.bytedance.sdk.openadsdk.core.r.wp();
        wpVar.ox(jSONObject.optString("ugen_dialog_md5"));
        wpVar.d(jSONObject.optString("ugen_dialog_url"));
        wpVar.dq(jSONObject.optString("dialog_style"));
        return wpVar;
    }

    public static com.bytedance.sdk.openadsdk.core.r.e p(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.r.e eVar = new com.bytedance.sdk.openadsdk.core.r.e();
        eVar.p(jSONObject.optString("bg_url"));
        eVar.ox(jSONObject.optString(abn.EXTRA_TITLE));
        eVar.dq(jSONObject.optString("reward_image_url"));
        eVar.d(jSONObject.optString("reward_title"));
        eVar.s(jSONObject.optString(MediaFormat.KEY_SUBTITLE));
        return eVar;
    }

    public static com.bytedance.sdk.openadsdk.core.r.s s(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.r.s sVar = new com.bytedance.sdk.openadsdk.core.r.s();
        sVar.p(jSONObject.optString("developer_name"));
        sVar.d(jSONObject.optString("app_version"));
        JSONArray optJSONArray = jSONObject.optJSONArray("permissions");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            sVar.d(optJSONArray);
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    sVar.dq(optJSONObject.optString("permission_name"), optJSONObject.optString("permission_desc"));
                }
            }
        }
        sVar.dq(jSONObject.optString("permissions_url"));
        sVar.dq(jSONObject.optInt("score", 0));
        sVar.dq(jSONObject.optJSONArray("creative_tags"));
        sVar.s(jSONObject.optString("privacy_policy_url"));
        sVar.iw(jSONObject.optString("desc_url"));
        sVar.mn(jSONObject.optString("reg_number"));
        sVar.kk(jSONObject.optString("app_name"));
        sVar.ia(jSONObject.optString("package_name"));
        return sVar;
    }
}
