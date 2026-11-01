package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.c;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wn;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.r.o f2794d;
    private iw dq;

    public s(iw iwVar, com.bytedance.sdk.openadsdk.core.r.o oVar) {
        this.dq = iwVar;
        this.f2794d = oVar;
    }

    public void d() {
        int q = this.dq.q();
        j d2 = this.dq.d();
        Map<String, Object> o = this.dq.o();
        if (q != Integer.MIN_VALUE && i.p(d2)) {
            boolean z = true;
            if (q != 1 && q != 3) {
                z = false;
            }
            o.put("openPlayableLandingPage", Boolean.valueOf(z));
            o.put("allow_open_playable_landing_page", Boolean.valueOf(l.s(d2)));
        }
        if (i.p(d2)) {
            o.put("is_play_with_download", Boolean.valueOf(l.p(d2)));
        }
    }

    public void dq(j jVar, Map<String, Object> map) {
        c eb;
        if (jVar == null || !gx.dq(jVar) || (eb = jVar.eb()) == null) {
            return;
        }
        String ox = eb.ox();
        String p = eb.p();
        int d2 = gx.d(jVar);
        long s = eb.s();
        Long l = TTAdConstant.LIVE_REWARD_TIME;
        if (s > l.longValue()) {
            s -= l.longValue();
        }
        try {
            if (!TextUtils.isEmpty(ox)) {
                JSONObject jSONObject = new JSONObject(ox);
                if (s <= 0 || d2 == 1) {
                    jSONObject.put("ad_slot_type", -1);
                    eb.ox(jSONObject.toString());
                }
            }
            if (!TextUtils.isEmpty(p)) {
                JSONObject jSONObject2 = new JSONObject(p);
                if (s <= 0) {
                    s = 0;
                }
                jSONObject2.put("count_down_time", s / 1000);
                jSONObject2.put("pkg_name", com.bytedance.sdk.openadsdk.core.ir.c.kk());
                jSONObject2.put("act_name", com.bytedance.sdk.openadsdk.core.ir.c.o(com.bytedance.sdk.openadsdk.core.ir.c.kk()));
                eb.p(jSONObject2.toString());
            }
            map.put("is_reward_live", Boolean.TRUE);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean dq() {
        com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar;
        j d2 = this.dq.d();
        if (d2 == null) {
            return false;
        }
        String ff = d2.ff();
        String gn = d2.gn();
        r zi = d2.zi();
        if (TextUtils.isEmpty(ff) || TextUtils.isEmpty(gn) || zi == null || zi.p() != 1 || (dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(ff, com.bytedance.sdk.openadsdk.f.d.dq.dq.class)) == null) {
            return false;
        }
        HashMap hashMap = new HashMap();
        Boolean bool = Boolean.FALSE;
        hashMap.put("is_button", bool);
        dqVar.dq(100, hashMap);
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(hashMap, bool, d2.el(), d2.fa());
        Object obj = hashMap.get("convert_result");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return true;
    }

    public boolean dq(Map<String, Object> map, boolean z, String str, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        iw iwVar = this.dq;
        if (iwVar == null) {
            return false;
        }
        int q = iwVar.q();
        Object obj = map.get("key_open_video_detail_page_direct");
        boolean z6 = obj != null && ((Boolean) obj).booleanValue();
        if (q == -1) {
            com.bytedance.sdk.openadsdk.core.o.d.ox ia = this.dq.ia();
            if (ia != null) {
                ia.p(true);
                j d2 = this.dq.d();
                com.bytedance.sdk.openadsdk.core.r.o oVar = this.f2794d;
                ia.dq(d2, oVar != null && oVar.dq());
                z5 = true;
            } else {
                z5 = false;
            }
        } else if (q != 0) {
            com.bytedance.sdk.openadsdk.core.r.o oVar2 = this.f2794d;
            z5 = dq(z, str, true, z6, oVar2 != null && oVar2.dq());
        } else {
            com.bytedance.sdk.openadsdk.core.o.d.ox ia2 = this.dq.ia();
            if (!z4 || ia2 == null) {
                com.bytedance.sdk.openadsdk.core.r.o oVar3 = this.f2794d;
                z5 = dq(z, str, false, z6, oVar3 != null && oVar3.dq());
            } else {
                ia2.p(true);
                j d3 = this.dq.d();
                com.bytedance.sdk.openadsdk.core.r.o oVar4 = this.f2794d;
                ia2.dq(d3, oVar4 != null && oVar4.dq());
                z5 = true;
            }
        }
        j d4 = this.dq.d();
        if (d4 == null || !z2) {
            return false;
        }
        fw kf = d4.kf();
        if (z3 && !z5 && kf != null && kf.ox() == 2) {
            return false;
        }
        d();
        map.put("convert_res", Boolean.valueOf(z5));
        return true;
    }

    public boolean dq(boolean z, String str, boolean z2, boolean z3, boolean z4) {
        boolean dq = dq();
        ig.dq("do", "int:".concat(String.valueOf(dq)));
        if (dq) {
            return false;
        }
        wn.dq(z3);
        return wn.dq(this.dq, str, z, z2, z4);
    }

    public void ox() {
        j d2 = this.dq.d();
        if (d2 == null) {
            return;
        }
        boolean ox = i.ox(d2);
        iw iwVar = this.dq;
        String no = ox ? iwVar.no() : com.bytedance.sdk.openadsdk.core.ir.c.dq(iwVar.kk());
        com.bytedance.sdk.openadsdk.core.r.o oVar = this.f2794d;
        dq(ox, no, true, false, oVar != null && oVar.dq());
    }
}
