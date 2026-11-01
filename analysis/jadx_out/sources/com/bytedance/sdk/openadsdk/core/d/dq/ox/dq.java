package com.bytedance.sdk.openadsdk.core.d.dq.ox;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.mp.s;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq extends d {
    protected boolean ia;
    private com.bytedance.sdk.openadsdk.core.video.d.d ig;
    protected Map<String, Object> iw;
    protected String mn;
    private String no;
    protected kk s;
    private int kk = -1;
    private int o = -1;
    private boolean mp = false;

    public dq() {
    }

    public dq(j jVar, Context context) {
        this.dq = jVar;
        this.f2787d = context;
        this.iw = new HashMap();
    }

    private void iw() {
        com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ox.dq();
        long d2 = dq.d("click_to_live_duration", 0L);
        if (d2 == 0) {
            Map<String, Object> map = this.iw;
            if (map != null) {
                map.remove("click_livead_duration");
                return;
            }
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - d2;
        HashMap hashMap = new HashMap();
        hashMap.put("click_livead_duration", Long.valueOf(currentTimeMillis));
        dq(hashMap);
        dq.d("click_to_live_duration", 0L);
    }

    private String ox(String str) {
        str.getClass();
        switch (str) {
            case "banner_ad":
                return "banner_call";
            case "embeded_ad":
            case "draw_ad":
                return "feed_call";
            case "splash_ad":
                return "splash_ad";
            case "interaction":
                return "interaction_call";
            case "slide_banner_ad":
                return "banner_call";
            default:
                return "";
        }
    }

    public void d() {
        this.o = 1;
    }

    public void d(String str) {
        this.no = str;
    }

    public void d(boolean z) {
        this.ia = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.ox.d, com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        if (this.mp) {
            return 0;
        }
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.ig;
        if (dVar != null && dVar.no() == 1) {
            return 0;
        }
        if (this.ox == null) {
            this.ox = new o();
        }
        if ("splash_ad".equals(this.mn) || "cache_splash_ad".equals(this.mn) || "splash_ad_landingpage".equals(this.mn)) {
            this.kk = this.kk == 1 ? 1 : 0;
        }
        Object obj = map.get("convert_res");
        boolean booleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false;
        if (this.s == null) {
            this.s = p();
        }
        Object obj2 = map.get("is_reward_live");
        if (obj2 instanceof Boolean ? ((Boolean) obj2).booleanValue() : false) {
            iw();
        }
        Object obj3 = map.get("is_need_report_click_button");
        boolean booleanValue2 = obj3 instanceof Boolean ? ((Boolean) obj3).booleanValue() : false;
        int i = this.ox.s() ? 1 : 2;
        if (booleanValue2) {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq("click_button", this.dq, this.s, this.mn, true, this.iw, i, this.ia);
        }
        Object obj4 = map.get("is_need_report_click_call");
        if (obj4 instanceof Boolean ? ((Boolean) obj4).booleanValue() : false) {
            String ox = ox(this.mn);
            if (!TextUtils.isEmpty(ox)) {
                com.bytedance.sdk.openadsdk.core.ig.ox.dq("click_call", this.dq, this.s, ox, true, this.iw, i, this.ia);
            }
        }
        if (map.containsKey("reward_browse_banner_from")) {
            this.iw.put(TTDownloadField.TT_REFER, MediationConstant.RIT_TYPE_BANNER);
        }
        if (h.dq(this.dq) && !s.dq(String.valueOf(c.kk(this.dq))) && this.dq.eo() != null) {
            this.iw.put("refresh_num", Integer.valueOf(this.dq.eo().ox()));
        }
        Object obj5 = map.get("click_saas_action");
        if (obj5 != null && (obj5 instanceof Integer)) {
            this.iw.put("click_saas_action", obj5);
        }
        Object obj6 = map.get("click_saas_area");
        if (obj5 != null && (obj5 instanceof Integer)) {
            this.iw.put("click_saas_area", obj6);
        }
        dq(true);
        com.bytedance.sdk.openadsdk.core.ig.ox.dq("click", this.dq, this.s, this.mn, booleanValue, this.iw, i, this.ia);
        return 0;
    }

    public void dq() {
        this.kk = 1;
    }

    public void dq(kk kkVar) {
        this.s = kkVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.video.d.d dVar) {
        this.ig = dVar;
    }

    public void dq(String str) {
        this.mn = str;
    }

    public void dq(Map<String, Object> map) {
        Map<String, Object> map2 = this.iw;
        if (map2 == null) {
            this.iw = map;
        } else {
            map2.putAll(map);
        }
    }

    public void dq(boolean z) {
        this.mp = z;
    }

    public String ox() {
        return this.no;
    }

    public kk p() {
        int i = this.kk;
        if (i != -1) {
            this.kk = -1;
        } else {
            i = -1;
        }
        float iw = ce.iw(this.f2787d);
        int ia = ce.ia(this.f2787d);
        float mn = ce.mn(this.f2787d);
        View mn2 = this.ox.mn();
        View iw2 = this.ox.iw();
        return new kk.dq().iw(this.ox.q()).s(this.ox.jy()).p(this.ox.f()).ox(this.ox.fw()).d(this.ox.ig()).dq(this.ox.mp()).d(ce.dq(mn2)).dq(ce.dq(iw2)).ox(ce.ox(mn2)).p(ce.ox(iw2)).ox(this.ox.d()).p(this.ox.ox()).s(this.ox.p()).dq(this.ox.o()).d(no.ia().ox() ? 1 : 2).dq(this.no).dq(iw).dq(ia).d(mn).iw(i).mn(this.o).ia(this.ox.gh()).s(this.ox.cd()).dq();
    }

    public Map<String, Object> s() {
        return this.iw;
    }
}
