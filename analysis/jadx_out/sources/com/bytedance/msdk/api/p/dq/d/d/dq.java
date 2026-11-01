package com.bytedance.msdk.api.p.dq.d.d;

import com.bytedance.msdk.dq.d.iw;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {
    protected com.bytedance.msdk.api.p.dq.d.ox dq = new com.bytedance.msdk.api.p.dq.d.ox();

    public void d(Map<String, Object> map) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.p(map);
        }
    }

    public void dq(double d2) {
        this.dq.dq(d2);
    }

    public void dq(int i) {
        this.dq.jy(i);
    }

    public void dq(d dVar) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.dq(dVar);
        }
    }

    public void dq(Map<String, Object> map) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar;
        if (map == null || (oxVar = this.dq) == null) {
            return;
        }
        oxVar.ox(map);
    }

    public iw ig() {
        return this.dq.u();
    }

    public com.bytedance.msdk.api.p.dq.d.ox no() {
        return this.dq;
    }
}
