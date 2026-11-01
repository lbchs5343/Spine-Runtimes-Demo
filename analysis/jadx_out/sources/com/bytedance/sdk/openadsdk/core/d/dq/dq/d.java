package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import android.content.Context;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.core.d.dq.dq {
    s iw;
    iw s;

    public interface dq {
        void dq(View view, int i);
    }

    public d() {
        iw iwVar = new iw();
        this.s = iwVar;
        this.iw = new s(iwVar, this.ox);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int p(Map<String, Object> map) {
        String r;
        if (map == null) {
            map = new HashMap<>(1);
        }
        com.bytedance.sdk.openadsdk.core.live.d dq2 = com.bytedance.sdk.openadsdk.core.live.d.dq();
        if ((dq2.dq(this.s) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) == 0) {
            this.s.fw();
            return 0;
        }
        HashMap hashMap = new HashMap(3);
        iw iwVar = this.s;
        hashMap.put("event_tag", iwVar != null ? iwVar.no() : "");
        com.bytedance.sdk.openadsdk.core.r.o oVar = this.ox;
        if (oVar != null && (r = oVar.r()) != null) {
            hashMap.put("dpa_tag", r);
        }
        com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.p, this.dq.nr(), hashMap, map);
        int dq3 = dq2.dq(this.f2787d, this.dq, hashMap);
        int i = dq3 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i2 = (dq3 & 65280) >> 8;
        if (i2 > 0) {
            map.put("click_saas_action", Integer.valueOf(i2));
        }
        if (i == 0) {
            return 0;
        }
        int d2 = d(map);
        s();
        return d2;
    }

    public int d(Map<String, Object> map) {
        return 0;
    }

    public iw d() {
        return this.s;
    }

    public void d(int i) {
        this.s.ox(i);
    }

    public void d(boolean z) {
        this.s.p(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(final Map<String, Object> map, final com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        j jVar;
        if (this.f2787d == null) {
            this.f2787d = wp.getContext();
        }
        if (this.f2787d == null || (jVar = this.dq) == null) {
            return 1;
        }
        ox(jVar.y());
        p();
        final dq dq2 = this.s.dq();
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                dq dqVar = dq2;
                if (dqVar != null) {
                    dqVar.dq(((com.bytedance.sdk.openadsdk.core.d.dq.dq) d.this).p, d.this.s.p());
                }
            }
        });
        int dq3 = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.dq, new com.bytedance.sdk.openadsdk.core.live.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.dq.d.2
            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq() {
                oxVar.dq(0);
            }

            @Override // com.bytedance.sdk.openadsdk.core.live.dq.ox
            public void dq(int i) {
                oxVar.dq(d.this.p((Map<String, Object>) map));
            }
        }, this.s.no());
        if (dq3 == 1) {
            return 0;
        }
        if (dq3 == 2) {
            return 2;
        }
        return p(map);
    }

    public com.bytedance.sdk.openadsdk.core.o.d.ox dq() {
        return this.s.ia();
    }

    public void dq(int i) {
        this.s.d(i);
    }

    public void dq(long j) {
        this.s.dq(j);
    }

    public void dq(Context context) {
        this.f2787d = context;
        this.s.dq(context);
    }

    public void dq(dq dqVar) {
        this.s.dq(dqVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar) {
        this.s.dq(oxVar);
    }

    public void dq(j jVar) {
        this.dq = jVar;
        this.s.dq(jVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.video.d.d dVar) {
        this.s.dq(dVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        this.s.dq(dqVar);
    }

    public void dq(Object obj) {
        this.s.dq(obj);
    }

    public void dq(String str) {
        this.s.dq(str);
    }

    public void dq(Map<String, Object> map) {
        this.s.dq(map);
    }

    public void dq(boolean z) {
        this.s.dq(z);
    }

    public s ox() {
        return this.iw;
    }

    public void ox(int i) {
        if (this.s.s()) {
            this.s.dq(i);
        }
    }

    public void ox(Map<String, Object> map) {
        View view = this.p;
        if (view == null) {
            return;
        }
        Object tag = view.getTag(2114387597);
        if ((tag instanceof Boolean) && ((Boolean) tag).booleanValue()) {
            map.put("reward_browse_banner_from", Boolean.TRUE);
        }
    }

    public void ox(boolean z) {
        this.s.ox(z);
    }

    public void p() {
        if (this.s.ox() && this.s.s()) {
            com.bytedance.sdk.openadsdk.core.o.d.ox ia = this.s.ia();
            if (ia instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) ia).ox(true);
            }
        }
    }

    public void p(boolean z) {
        this.s.d(z);
    }

    public void s() {
        if (this.s.s()) {
            com.bytedance.sdk.openadsdk.i.dq.d.dq.dq mn = this.s.mn();
            if (!c.ox(this.dq) || mn == null) {
                return;
            }
            mn.d();
        }
    }
}
