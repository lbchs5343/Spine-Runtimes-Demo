package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.d.dq.d.p;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class mn extends d {
    private boolean ia;
    private boolean iw;
    private com.bytedance.sdk.openadsdk.core.d.d kk;
    private dq mn;
    private int s;

    public interface dq {
        boolean d();

        boolean dq();
    }

    public mn(j jVar, Context context) {
        this.dq = jVar;
        this.f2787d = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.sdk.openadsdk.core.d.dq.dq.iw iwVar, Map<String, Object> map, boolean z, com.bytedance.sdk.openadsdk.core.d.dq.dq.s sVar, String str, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        Map<String, Object> map2;
        boolean z2;
        if (dq(iwVar, map)) {
            map2 = map;
            z2 = true;
        } else {
            map2 = map;
            z2 = sVar.dq(map2, z, str, true, true, false);
        }
        if (z2) {
            d(map2, oxVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.kk.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(map, oxVar);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.kk.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class)).dq(map, oxVar);
    }

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

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bytedance.sdk.openadsdk.core.d.dq.dq.iw iwVar, final Map<String, Object> map, final boolean z, final com.bytedance.sdk.openadsdk.core.d.dq.dq.s sVar, final String str, final com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        final d.dq dq2 = iwVar.dq();
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.mn.2
            @Override // java.lang.Runnable
            public void run() {
                d.dq dqVar = dq2;
                if (dqVar != null) {
                    dqVar.dq(((com.bytedance.sdk.openadsdk.core.d.dq.dq) mn.this).p, iwVar.p());
                }
            }
        });
        int dq3 = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.dq, new com.bytedance.sdk.openadsdk.core.live.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.mn.3
            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq() {
                mn.this.d(map, oxVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq(int i) {
                mn.this.d(iwVar, map, z, sVar, str, oxVar);
            }
        }, iwVar.no());
        if (dq3 == 1 || dq3 == 2) {
            d(map, oxVar);
        } else {
            d(iwVar, map, z, sVar, str, oxVar);
        }
    }

    private boolean dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.iw iwVar, Map<String, Object> map) {
        int i;
        String r;
        com.bytedance.sdk.openadsdk.core.live.d dq2 = com.bytedance.sdk.openadsdk.core.live.d.dq();
        HashMap hashMap = new HashMap(2);
        hashMap.put("event_tag", iwVar != null ? iwVar.no() : "");
        com.bytedance.sdk.openadsdk.core.r.o oVar = this.ox;
        if (oVar != null && (r = oVar.r()) != null) {
            hashMap.put("dpa_tag", r);
        }
        com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.p, this.dq.nr(), hashMap, map);
        int dq3 = dq2.dq(this.f2787d, this.dq, hashMap);
        int i2 = dq3 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        if (map != null && (i = (dq3 & 65280) >> 8) > 0) {
            map.put("click_saas_action", Integer.valueOf(i));
        }
        return i2 == 0;
    }

    private boolean iw() {
        return this.ia;
    }

    private boolean mn() {
        j jVar = this.dq;
        return jVar != null && jVar.gx() == 1 && j.d(this.dq);
    }

    private boolean p() {
        return s() && d(this.p) && !this.iw;
    }

    private boolean s() {
        if (this.dq == null || iw() || !j.d(this.dq)) {
            return false;
        }
        if (this.s == 0) {
            this.s = c.ia(this.dq);
        }
        dq();
        ox();
        d();
        if (this.s == 5 && mn() && ox() && !dq() && !d()) {
            return false;
        }
        int i = this.s;
        return i == 1 || i == 2 || i == 5;
    }

    public void d(boolean z) {
        this.iw = z;
    }

    public boolean d() {
        dq dqVar = this.mn;
        if (dqVar == null) {
            return false;
        }
        return dqVar.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(final Map<String, Object> map, final com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.d.d dVar;
        if (!p() || (dVar = this.kk) == null) {
            return 0;
        }
        com.bytedance.sdk.openadsdk.core.d.dq.dq.d dVar2 = (com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class);
        final com.bytedance.sdk.openadsdk.core.d.dq.dq.iw d2 = dVar2.d();
        final com.bytedance.sdk.openadsdk.core.d.dq.dq.s ox = dVar2.ox();
        final boolean ox2 = i.ox(this.dq);
        final String no = ox2 ? d2.no() : c.dq(d2.kk());
        d2.dq(no);
        d2.d(ox2);
        ox.dq(this.dq, map);
        if (p.dq(this.dq, false)) {
            new p(this.dq, this.f2787d).dq(no).dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.mn.1
                @Override // com.bytedance.sdk.openadsdk.core.d.dq.d.p.dq
                public void dq() {
                    mn.this.dq(d2, map, ox2, ox, no, oxVar);
                }
            });
            return 1;
        }
        dq(d2, map, ox2, ox, no, oxVar);
        return 1;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        this.kk = dVar;
    }

    public void dq(dq dqVar) {
        this.mn = dqVar;
    }

    public void dq(boolean z) {
        this.ia = z;
    }

    public boolean dq() {
        dq dqVar = this.mn;
        if (dqVar == null) {
            return false;
        }
        return dqVar.dq();
    }

    public boolean ox() {
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
}
