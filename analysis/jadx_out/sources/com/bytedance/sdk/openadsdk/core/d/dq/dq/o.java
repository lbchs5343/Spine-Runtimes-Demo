package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.d.dq.d.mn;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.wp;
import g.abn;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class o extends d {
    private mn.dq ia;
    private boolean kk;
    private int mn;

    private boolean d(View view) {
        if (view == null) {
            return false;
        }
        if ((view instanceof NativeVideoTsView) || view.getId() == 2114387961 || view.getId() == 2114387667 || view.getId() == 2114387957 || view.getId() == 2114387769 || view.getId() == 2114387689 || view.getId() == 2114387629) {
            return true;
        }
        if (view instanceof ViewGroup) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    break;
                }
                if (d(viewGroup.getChildAt(i))) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    private boolean dq(j jVar, Object obj) {
        if (i.p(jVar)) {
            return !(obj == null && jVar.es() == 100.0f) && l.i(jVar);
        }
        return false;
    }

    private boolean ig() {
        j jVar = this.dq;
        return jVar != null && jVar.gx() == 1 && j.d(this.dq);
    }

    private boolean kk() {
        return o() && d(this.p) && !this.s.ox();
    }

    private boolean no() {
        return this.kk;
    }

    private boolean o() {
        if (this.dq == null || no() || !j.d(this.dq)) {
            return false;
        }
        if (this.mn == 0) {
            this.mn = c.ia(this.dq);
        }
        iw();
        ia();
        mn();
        if (this.mn == 5 && ig() && ia() && !iw() && !mn()) {
            return false;
        }
        int i = this.mn;
        return i == 1 || i == 2 || i == 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d, com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        ox(this.dq.y());
        p();
        final d.dq dq = this.s.dq();
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.dq.o.1
            @Override // java.lang.Runnable
            public void run() {
                d.dq dqVar = dq;
                if (dqVar != null) {
                    dqVar.dq(((com.bytedance.sdk.openadsdk.core.d.dq.dq) o.this).p, o.this.s.p());
                }
            }
        });
        Map<String, Object> o = this.s.o();
        String le = this.ox.le();
        if (TextUtils.isEmpty(le)) {
            le = "clickEvent";
        }
        String str = le;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        o.put("click_from_uchain", 1);
        o.put("event_type", str);
        c.kx();
        HashMap hashMap = new HashMap();
        hashMap.put("material_meta", this.dq);
        hashMap.put("dpa_tag", this.ox.r());
        hashMap.put("context", this.f2787d);
        hashMap.put("event_tag", this.s.no());
        hashMap.put(abn.EXTRA_SOURCE, Integer.valueOf(this.s.kk()));
        hashMap.put("view", this.p);
        hashMap.put("handle_chain_data", map);
        com.bytedance.sdk.openadsdk.core.o.d.ox ia = this.s.ia();
        if (ia != null) {
            hashMap.put("download_adapter", ia);
            hashMap.put("is_market_covert", Boolean.valueOf(ia.dq()));
            hashMap.putAll(ia.s());
        }
        Map<String, Object> dq2 = com.bytedance.sdk.component.no.s.dq.dq().dq(this.dq.hashCode() + this.dq.el());
        Object remove = dq2.remove("visibility_listener");
        if (remove instanceof mn.dq) {
            this.ia = (mn.dq) remove;
        }
        Object remove2 = dq2.remove("is_express_ad");
        if (remove2 instanceof Boolean) {
            this.kk = ((Boolean) remove2).booleanValue();
        }
        hashMap.put("is_video_lp", Boolean.valueOf(kk()));
        hashMap.putAll(dq2);
        Boolean bool = Boolean.FALSE;
        hashMap.put("convert_from_downloader", bool);
        hashMap.put("convert_from_landing_page", Boolean.valueOf(this.s.ox()));
        hashMap.put("pip_controller", this.s.cd());
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq(this.dq, this.f2787d, this.s.no(), this.s.kk());
        dqVar.d(dq(this.dq, this.s.mp()));
        dqVar.dq(this.s.s());
        dqVar.ox(this.s.ig());
        hashMap.put("is_open_web_page", bool);
        dqVar.d(hashMap);
        hashMap.put("activity_type", Integer.valueOf(c.dq(dqVar.d())));
        hashMap.put("is_feed_register_direct_download", Boolean.valueOf(this.ox.dq()));
        int dq3 = dqVar.dq();
        if (dq3 != Integer.MIN_VALUE) {
            this.s.o().put("play_percent", Integer.valueOf(dq3));
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq(this.dq, o, str, hashMap, this.s.no(), new HashMap());
        s();
        return 0;
    }

    public boolean ia() {
        j jVar = this.dq;
        if (jVar == null) {
            return true;
        }
        int mn = wp.d().mn(c.kk(jVar));
        if (mn == 1) {
            return q.p(this.f2787d);
        }
        if (mn == 2) {
            return q.s(this.f2787d) || q.p(this.f2787d) || q.iw(this.f2787d);
        }
        if (mn != 3) {
            return mn != 5 || q.p(this.f2787d) || q.iw(this.f2787d);
        }
        return false;
    }

    public boolean iw() {
        mn.dq dqVar = this.ia;
        if (dqVar == null) {
            return false;
        }
        return dqVar.dq();
    }

    public boolean mn() {
        mn.dq dqVar = this.ia;
        if (dqVar == null) {
            return false;
        }
        return dqVar.d();
    }
}
