package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class iw extends d {
    private com.bytedance.sdk.openadsdk.core.d.p iw;
    private int mn;
    private String s;

    public iw() {
    }

    public iw(j jVar, Context context, com.bytedance.sdk.openadsdk.core.d.p pVar) {
        this.dq = jVar;
        this.f2787d = context;
        this.iw = pVar;
        dq();
    }

    public static boolean d(int i) {
        switch (i) {
            case 101:
            case 102:
            case 103:
            case 104:
                return true;
            default:
                return false;
        }
    }

    private boolean d(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        String r;
        if (this.mn < 2) {
            return false;
        }
        HashMap hashMap = new HashMap(2);
        if (d(this.mn)) {
            hashMap.put("live_saas_param_interaction_type", Integer.valueOf(this.mn));
        }
        hashMap.put("event_tag", this.s);
        com.bytedance.sdk.openadsdk.core.r.o oVar = this.ox;
        if (oVar != null && (r = oVar.r()) != null) {
            hashMap.put("dpa_tag", r);
        }
        com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.p, this.dq.nr(), hashMap, map);
        int dq = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(this.f2787d, this.dq, hashMap);
        int i = dq & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i2 = (dq & 65280) >> 8;
        if (i2 > 0) {
            map.put("click_saas_action", Integer.valueOf(i2));
        }
        if (i != 0) {
            return false;
        }
        ox(map, oxVar);
        return true;
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        iw iwVar;
        if (dVar == null) {
            iwVar = null;
        } else {
            try {
                iwVar = (iw) dVar.dq(iw.class);
            } catch (NullPointerException unused) {
                return;
            }
        }
        if (iwVar != null) {
            iwVar.dq();
        }
    }

    private void ox(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.d.p pVar = this.iw;
        if (pVar != null) {
            try {
                com.bytedance.sdk.openadsdk.core.d.dq.dq.d dVar = (com.bytedance.sdk.openadsdk.core.d.dq.dq.d) pVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class);
                if (dVar != null && dVar.d() != null) {
                    final com.bytedance.sdk.openadsdk.core.d.dq.dq.iw d2 = dVar.d();
                    final d.dq dq = d2.dq();
                    com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.iw.1
                        @Override // java.lang.Runnable
                        public void run() {
                            d.dq dqVar = dq;
                            if (dqVar != null) {
                                dqVar.dq(((com.bytedance.sdk.openadsdk.core.d.dq.dq) iw.this).p, d2.p());
                            }
                        }
                    });
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(map, oxVar) == 0) {
                ((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.iw.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class)).dq(map, oxVar);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        boolean z;
        try {
            z = d(map, oxVar);
        } catch (Throwable unused) {
            z = false;
        }
        dq();
        return z ? 1 : 0;
    }

    public void dq() {
        j jVar = this.dq;
        if (jVar != null) {
            this.mn = jVar.po();
        } else {
            this.mn = -1;
        }
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(k kVar) {
        try {
            this.mn = kVar.dq().optInt("live_saas_param_interaction_type", -1);
            kVar.dq();
        } catch (Exception unused) {
        }
    }

    public void dq(String str) {
        this.s = str;
    }
}
