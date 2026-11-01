package com.bytedance.msdk.mn.p;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.mn.s;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements com.bytedance.msdk.mn.d, com.bytedance.msdk.mn.dq, com.bytedance.msdk.mn.dq.d, com.bytedance.msdk.mn.ox {
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.mn.d f1120d;
    private com.bytedance.msdk.mn.dq ox;
    private com.bytedance.msdk.mn.ox p;

    private d() {
    }

    public static d jy() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    @Override // com.bytedance.msdk.mn.dq
    public List<com.bytedance.msdk.core.no.dq> d() {
        com.bytedance.msdk.mn.dq dqVar = this.ox;
        if (dqVar == null) {
            return null;
        }
        return dqVar.d();
    }

    @Override // com.bytedance.msdk.mn.d
    public void d(JSONObject jSONObject) {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar != null) {
            dVar.d(jSONObject);
        }
    }

    @Override // com.bytedance.msdk.mn.ox
    public com.bytedance.msdk.core.no.d dq(String str, int i, int i2) {
        com.bytedance.msdk.mn.ox oxVar = this.p;
        if (oxVar == null) {
            return null;
        }
        return oxVar.dq(str, i, i2);
    }

    @Override // com.bytedance.msdk.mn.dq
    public com.bytedance.msdk.core.no.dq dq(String str) {
        com.bytedance.msdk.mn.dq dqVar = this.ox;
        if (dqVar == null) {
            return null;
        }
        return dqVar.dq(str);
    }

    @Override // com.bytedance.msdk.mn.dq
    public void dq() {
        com.bytedance.msdk.mn.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // com.bytedance.msdk.mn.p
    public void dq(Runnable runnable) {
        if (runnable != null) {
            iw.p(runnable);
        }
    }

    @Override // com.bytedance.msdk.mn.dq.d
    public void dq(String str, boolean z) {
        if (this.f1120d == null) {
            this.f1120d = ox.dq();
        }
        if (this.ox == null) {
            this.ox = dq.p();
        }
        if (this.p == null) {
            this.p = p.dq();
        }
    }

    @Override // com.bytedance.msdk.mn.ox
    public void dq(JSONArray jSONArray) {
        com.bytedance.msdk.mn.ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.dq(jSONArray);
        }
    }

    @Override // com.bytedance.msdk.mn.dq
    public void dq(JSONObject jSONObject) {
        com.bytedance.msdk.mn.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(jSONObject);
        }
    }

    @Override // com.bytedance.msdk.mn.d
    public int ia() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        return dVar == null ? MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE : dVar.ia();
    }

    @Override // com.bytedance.msdk.mn.ox
    public void ig() {
        com.bytedance.msdk.mn.ox oxVar = this.p;
        if (oxVar != null) {
            oxVar.ig();
        }
    }

    @Override // com.bytedance.msdk.mn.d
    public int iw() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar == null) {
            return 0;
        }
        return dVar.iw();
    }

    @Override // com.bytedance.msdk.mn.d
    public boolean kk() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar == null) {
            return false;
        }
        return dVar.kk();
    }

    @Override // com.bytedance.msdk.mn.d
    public int mn() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar == null) {
            return 0;
        }
        return dVar.mn();
    }

    @Override // com.bytedance.msdk.mn.ox
    public boolean mp() {
        com.bytedance.msdk.mn.ox oxVar = this.p;
        if (oxVar == null) {
            return true;
        }
        return oxVar.mp();
    }

    @Override // com.bytedance.msdk.mn.d
    public boolean no() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar != null) {
            return dVar.no();
        }
        return false;
    }

    @Override // com.bytedance.msdk.mn.d
    public int o() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar == null) {
            return -1;
        }
        return dVar.o();
    }

    @Override // com.bytedance.msdk.mn.dq
    public boolean ox() {
        com.bytedance.msdk.mn.dq dqVar = this.ox;
        if (dqVar == null) {
            return false;
        }
        return dqVar.ox();
    }

    @Override // com.bytedance.msdk.mn.d
    public int p() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar == null) {
            return 100;
        }
        return dVar.p();
    }

    @Override // com.bytedance.msdk.mn.p
    public bl q() {
        return s.ia();
    }

    @Override // com.bytedance.msdk.mn.d
    public long s() {
        com.bytedance.msdk.mn.d dVar = this.f1120d;
        if (dVar == null) {
            return 120000L;
        }
        return dVar.s();
    }
}
