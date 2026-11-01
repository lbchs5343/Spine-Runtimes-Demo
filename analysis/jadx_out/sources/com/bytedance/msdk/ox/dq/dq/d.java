package com.bytedance.msdk.ox.dq.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes.dex */
public class d extends ox {
    public d(com.bytedance.msdk.ox.ox.d.dq.dq.d dVar, Bridge bridge) {
        super(dVar, bridge);
    }

    @Override // com.bytedance.msdk.d.s
    public View ig() {
        return u();
    }

    public View u() {
        try {
            if (((ox) this).f1125d == null) {
                return null;
            }
            return (View) ((ox) this).f1125d.call(8113, hat.f().k(), View.class);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
