package com.bytedance.msdk.ox.dq.dq;

import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes.dex */
public class o extends ox {
    public o(com.bytedance.msdk.ox.ox.d.dq.dq.d dVar, Bridge bridge) {
        super(dVar, bridge);
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(ViewGroup viewGroup) {
        try {
            ox(viewGroup);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void ox(ViewGroup viewGroup) {
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = ((ox) this).dq;
        if (dVar != null) {
            dVar.iw();
        }
        if (((ox) this).f1125d != null) {
            hat f2 = hat.f();
            f2.m(20060, viewGroup);
            ((ox) this).f1125d.call(6152, f2.k(), Void.class);
        }
    }
}
