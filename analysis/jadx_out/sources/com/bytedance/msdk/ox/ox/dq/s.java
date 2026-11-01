package com.bytedance.msdk.ox.ox.dq;

import android.text.TextUtils;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.Map;

/* loaded from: classes.dex */
public class s implements dq {
    private int dq(int i) {
        switch (i) {
            case 1:
                return 840032;
            case 2:
                return 840033;
            case 3:
                return 840034;
            case 4:
            case 6:
            default:
                return 840029;
            case 5:
                return 840035;
            case 7:
                return 840036;
            case 8:
                return 840037;
            case 9:
                return 840030;
            case 10:
                return 840039;
        }
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        if (dq.iw()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "调用过销毁方法_destroy()！！！");
            dq.dq(new com.bytedance.msdk.api.dq(41044, com.bytedance.msdk.api.dq.dq(41044)));
        } else if (dq.mp().s()) {
            dq.dq(new com.bytedance.msdk.api.dq(10010, "Ad load timeout!"));
        } else {
            interfaceC0088dq.dq((String) null);
        }
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        com.bytedance.msdk.api.dq.d gh = dq.gh();
        com.bytedance.msdk.api.d.dq dqVar = !com.bytedance.msdk.core.dq.d().dq(dq.gh().k(), dq.gh().le()) ? new com.bytedance.msdk.api.d.dq(840031, com.bytedance.msdk.api.dq.dq(840031)) : null;
        if (dqVar == null && !com.bytedance.msdk.core.dq.d().dq(dq.gh().le())) {
            dqVar = new com.bytedance.msdk.api.d.dq(dq(dq.gh().le()), com.bytedance.msdk.api.dq.dq(dq(dq.gh().le())));
        }
        if (dqVar == null && !com.bytedance.msdk.iw.ox.d()) {
            dqVar = new com.bytedance.msdk.api.d.dq(1, com.bytedance.msdk.api.dq.dq(1));
        }
        if (dqVar == null && dq.iw()) {
            dqVar = new com.bytedance.msdk.api.d.dq(41044, com.bytedance.msdk.api.dq.dq(41044));
        }
        if (dqVar == null && dq.getContext() == null) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "Context为null！！！");
            dqVar = new com.bytedance.msdk.api.d.dq(41005, com.bytedance.msdk.api.dq.dq(41005));
        }
        if (dqVar == null && TextUtils.isEmpty(dq.gh().k())) {
            dqVar = new com.bytedance.msdk.api.d.dq(840026, "广告位id不能为空");
        }
        if (dqVar == null && (dq.ig() == null || n.dq(dq.ig().t()))) {
            if (com.bytedance.msdk.mn.dq.dq.jy().mp()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(gh.k()) + "settings config.......没有settings config配置信息,AdUnitId = " + gh.k());
                dqVar = new com.bytedance.msdk.api.d.dq(840040, com.bytedance.msdk.api.dq.dq(840040));
                com.bytedance.msdk.s.iw.d(gh, 1);
            } else if (dq.ig() == null || !n.dq(dq.ig().t())) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(gh.k()) + "settings config.......注意，AdUnitId = " + gh.k() + " 的配置信息为 null ！！");
                dqVar = new com.bytedance.msdk.api.d.dq(44406, "广告位ID不合法");
                com.bytedance.msdk.s.iw.d(gh, 2);
            } else {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(gh.k()) + "settings config.......注意，AdUnitId = " + gh.k() + "  没有对应的waterfall配置信息");
                com.bytedance.msdk.s.iw.d(gh, 3);
            }
            com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).d(1);
        }
        if (dqVar == null) {
            String vf = gh.vf();
            if (!TextUtils.isEmpty(vf) && !com.bytedance.msdk.ox.mn.ox.dq(gh.k(), vf)) {
                dqVar = new com.bytedance.msdk.api.d.dq(840044, "本次请求未包含聚合广告位头层设价最高的代码位，导致聚合请求失败；请调整请求，确保包含聚合广告位头层设价最高的代码位。");
            }
        }
        com.bytedance.msdk.api.d.dq dqVar2 = dqVar;
        if (dqVar2 == null) {
            interfaceC0088dq.dq(interfaceC0088dq.dq());
        } else {
            com.bytedance.msdk.s.iw.dq(gh, dq.ig() != null ? dq.ig().gx() : null, !dq.k(), dq.c().dq, dqVar2.dq, (Map<String, Object>) null);
            dq.dq(dqVar2);
        }
    }
}
