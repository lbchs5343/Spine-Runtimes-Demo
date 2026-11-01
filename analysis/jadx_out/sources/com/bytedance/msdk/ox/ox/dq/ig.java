package com.bytedance.msdk.ox.ox.dq;

import android.text.TextUtils;
import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.Map;

/* loaded from: classes.dex */
public class ig implements dq {
    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        interfaceC0088dq.dq((String) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        com.bytedance.msdk.api.dq.d gh = dq.gh();
        String dq2 = com.bytedance.msdk.core.fw.dq.dq(gh.ce());
        if (!TextUtils.isEmpty(dq2)) {
            gh.p(2);
            com.bytedance.msdk.core.no.d dq3 = com.bytedance.msdk.core.fw.dq.dq(dq.ig(), dq2);
            if (dq3 == null) {
                com.bytedance.msdk.s.iw.dq(dq.gh(), (String) null, !dq.k(), dq.c().dq, 81012, (Map<String, Object>) null);
                dq.dq(new com.bytedance.msdk.api.d.dq(81012, com.bytedance.msdk.api.dq.dq(81012)));
                return;
            }
            dq.dq(dq3);
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dq3) + "测试工具加载广告........rit_id:" + gh.k() + " ,slot_id:" + dq2);
        }
        interfaceC0088dq.dq(interfaceC0088dq.dq());
    }
}
