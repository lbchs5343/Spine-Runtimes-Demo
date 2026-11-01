package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class fw implements com.bytedance.sdk.component.no.dq.dq.ox {

    @com.bytedance.sdk.component.no.d.dq(dq = "reward_dialog_callback")
    private com.bytedance.sdk.openadsdk.core.component.reward.ox.o dq;

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar = this.dq;
        if (oVar == null) {
            dqVar.d(map2);
            return true;
        }
        oVar.d();
        dqVar.dq(map2);
        return true;
    }
}
