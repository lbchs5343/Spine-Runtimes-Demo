package com.bytedance.msdk.ox.dq.dq;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.hat;

/* loaded from: classes.dex */
public class iw extends ox {
    public iw(com.bytedance.msdk.ox.ox.d.dq.dq.d dVar, Bridge bridge) {
        super(dVar, bridge);
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        try {
            ox(activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void ox(Activity activity) {
        com.bytedance.msdk.ox.ox.d.dq.dq.d dVar = ((ox) this).dq;
        if (dVar != null) {
            dVar.iw();
        }
        if (((ox) this).f1125d != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            ((ox) this).f1125d.call(8113, f2.k(), Void.class);
        }
    }
}
