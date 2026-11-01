package com.bytedance.msdk.mn.dq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.mn.s;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements com.bytedance.msdk.mn.d.d, d {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private d f1116d;
    private com.bytedance.msdk.mn.d.d ox = new com.bytedance.msdk.mn.d.dq();

    private dq() {
    }

    public static dq jy() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    @Override // com.bytedance.msdk.mn.d.d
    public long cd() {
        return this.ox.cd();
    }

    @Override // com.bytedance.msdk.mn.dq
    public List<com.bytedance.msdk.core.no.dq> d() {
        d dVar = this.f1116d;
        if (dVar == null) {
            return null;
        }
        return dVar.d();
    }

    public void d(Map<String, Object> map) {
        if (jy().i()) {
            jy().ox(com.bytedance.msdk.s.dq.ox);
            map.put("init_splash_fill_duration", Long.valueOf(jy().r()));
        } else if (jy().le()) {
            map.put("init_splash_fill_duration", Long.valueOf(jy().r()));
        }
    }

    public void d(final JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        iw.p(new Runnable() { // from class: com.bytedance.msdk.mn.dq.dq.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.mn.ox.d.dq().dq(jSONArray);
            }
        });
    }

    @Override // com.bytedance.msdk.mn.d
    public void d(JSONObject jSONObject) {
        d dVar = this.f1116d;
        if (dVar == null || jSONObject == null) {
            return;
        }
        dVar.d(jSONObject);
    }

    public boolean d(String str) {
        com.bytedance.msdk.core.no.dq dq2 = dq(str);
        return dq2 != null && dq2.p();
    }

    @Override // com.bytedance.msdk.mn.ox
    public com.bytedance.msdk.core.no.d dq(String str, int i, int i2) {
        d dVar = this.f1116d;
        if (dVar == null) {
            return null;
        }
        return dVar.dq(str, i, i2);
    }

    @Override // com.bytedance.msdk.mn.dq
    public com.bytedance.msdk.core.no.dq dq(String str) {
        d dVar = this.f1116d;
        if (dVar == null) {
            return null;
        }
        return dVar.dq(str);
    }

    @Override // com.bytedance.msdk.mn.dq
    public void dq() {
        d dVar = this.f1116d;
        if (dVar != null) {
            dVar.dq();
        }
    }

    @Override // com.bytedance.msdk.mn.p
    public void dq(Runnable runnable) {
        d dVar = this.f1116d;
        if (dVar != null) {
            dVar.dq(runnable);
        }
    }

    @Override // com.bytedance.msdk.mn.dq.d
    public synchronized void dq(String str, boolean z) {
        com.bytedance.msdk.core.d.no().ox(str);
        com.bytedance.msdk.core.d.no().ox(z);
        com.bytedance.msdk.mn.p.d jy = com.bytedance.msdk.mn.p.d.jy();
        this.f1116d = jy;
        jy.dq(com.bytedance.msdk.core.d.no().ig(), z);
    }

    public void dq(Map<String, Object> map) {
        if (jy().i()) {
            map.put("init_splash_request_duration", Long.valueOf(jy().gh()));
        } else if (jy().le()) {
            map.put("init_splash_request_duration", Long.valueOf(jy().gh()));
        }
    }

    @Override // com.bytedance.msdk.mn.ox
    public void dq(JSONArray jSONArray) {
        d dVar = this.f1116d;
        if (dVar != null) {
            dVar.dq(jSONArray);
        }
        d(jSONArray);
    }

    @Override // com.bytedance.msdk.mn.dq
    public void dq(JSONObject jSONObject) {
        d dVar = this.f1116d;
        if (dVar != null) {
            dVar.dq(jSONObject);
        }
        ox(jSONObject);
    }

    @Override // com.bytedance.msdk.mn.d.d
    public void f() {
        this.ox.f();
    }

    @Override // com.bytedance.msdk.mn.d.d
    public void fw() {
        this.ox.fw();
    }

    @Override // com.bytedance.msdk.mn.d.d
    public long gh() {
        return this.ox.gh();
    }

    @Override // com.bytedance.msdk.mn.d.d
    public boolean i() {
        return this.ox.i();
    }

    @Override // com.bytedance.msdk.mn.d
    public int ia() {
        d dVar = this.f1116d;
        return dVar == null ? MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE : dVar.ia();
    }

    @Override // com.bytedance.msdk.mn.ox
    public void ig() {
        d dVar = this.f1116d;
        if (dVar != null) {
            dVar.ig();
        }
    }

    @Override // com.bytedance.msdk.mn.d
    public int iw() {
        d dVar = this.f1116d;
        if (dVar == null) {
            return 0;
        }
        return dVar.iw();
    }

    public d k() {
        com.bytedance.msdk.mn.p.d jy = com.bytedance.msdk.mn.p.d.jy();
        jy.dq(com.bytedance.msdk.core.d.no().ig(), com.bytedance.msdk.core.d.no().mp());
        return jy;
    }

    @Override // com.bytedance.msdk.mn.d
    public boolean kk() {
        d dVar = this.f1116d;
        if (dVar != null) {
            return dVar.kk();
        }
        return false;
    }

    @Override // com.bytedance.msdk.mn.d.d
    public boolean le() {
        return this.ox.le();
    }

    @Override // com.bytedance.msdk.mn.d
    public int mn() {
        d dVar = this.f1116d;
        if (dVar == null) {
            return 0;
        }
        return dVar.mn();
    }

    @Override // com.bytedance.msdk.mn.ox
    public boolean mp() {
        d dVar = this.f1116d;
        if (dVar == null) {
            return true;
        }
        return dVar.mp();
    }

    @Override // com.bytedance.msdk.mn.d
    public boolean no() {
        d dVar = this.f1116d;
        if (dVar != null) {
            return dVar.no();
        }
        return false;
    }

    @Override // com.bytedance.msdk.mn.d
    public int o() {
        d dVar = this.f1116d;
        if (dVar != null) {
            return dVar.o();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.mn.d.d
    public void ox(String str) {
        this.ox.ox(str);
    }

    public void ox(Map<String, Object> map) {
        if (!jy().i()) {
            if (jy().le()) {
                map.put("call_init_method_duration", Long.valueOf(jy().cd()));
            }
        } else if (jy().cd() > 0) {
            jy().ox(com.bytedance.msdk.s.dq.ox);
            map.put("call_init_method_duration", Long.valueOf(jy().cd()));
        }
    }

    public void ox(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        iw.p(new Runnable() { // from class: com.bytedance.msdk.mn.dq.dq.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.mn.ox.d.dq().dq(jSONObject);
            }
        });
    }

    @Override // com.bytedance.msdk.mn.dq
    public boolean ox() {
        d dVar = this.f1116d;
        if (dVar == null) {
            return false;
        }
        return dVar.ox();
    }

    @Override // com.bytedance.msdk.mn.d
    public int p() {
        d dVar = this.f1116d;
        if (dVar == null) {
            return 100;
        }
        return dVar.p();
    }

    @Override // com.bytedance.msdk.mn.p
    public bl q() {
        d dVar = this.f1116d;
        return dVar != null ? dVar.q() : s.mn();
    }

    @Override // com.bytedance.msdk.mn.d.d
    public long r() {
        return this.ox.r();
    }

    @Override // com.bytedance.msdk.mn.d
    public long s() {
        d dVar = this.f1116d;
        if (dVar == null) {
            return 120000L;
        }
        return dVar.s();
    }
}
