package com.bytedance.msdk.ox.ox.dq;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.msdk.ia.n;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class o extends d {
    private final HashSet<String> ia = new HashSet<>();
    private final com.bytedance.msdk.core.no.d iw;
    private final List<com.bytedance.msdk.core.no.no> mn;
    private final com.bytedance.msdk.ox.s.dq.d s;

    public o(com.bytedance.msdk.ox.s.dq.d dVar, com.bytedance.msdk.core.no.d dVar2, List<com.bytedance.msdk.core.no.no> list) {
        this.s = dVar;
        this.iw = dVar2;
        this.mn = list;
    }

    private com.bytedance.msdk.core.no.no iw() {
        List<com.bytedance.msdk.core.no.no> list = this.mn;
        if (list == null) {
            return null;
        }
        for (com.bytedance.msdk.core.no.no noVar : list) {
            if (noVar != null) {
                if (!this.ia.contains(noVar.cd())) {
                    return noVar;
                }
            }
        }
        return null;
    }

    @Override // com.bytedance.msdk.ox.ox.dq.d
    public boolean d(com.bytedance.msdk.core.no.no noVar, int i) {
        com.bytedance.msdk.core.no.no iw;
        if (i == 1) {
            com.bytedance.msdk.core.no.no iw2 = iw();
            if (iw2 != null && noVar != null && TextUtils.equals(iw2.cd(), noVar.cd())) {
                ox();
                return true;
            }
        } else if (i == 2) {
            if (noVar != null) {
                this.ia.add(noVar.cd());
                List<com.bytedance.msdk.d.s> ia = this.s.ia();
                com.bytedance.msdk.d.s sVar = (ia == null || ia.size() <= 0) ? null : ia.get(0);
                if (sVar != null && (iw = iw()) != null && TextUtils.equals(iw.cd(), sVar.b())) {
                    ox();
                    return true;
                }
            }
            if (this.f1180d.ia()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "全部广告完成响应...");
                if (n.dq(this.s.ia())) {
                    dq(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)));
                }
                return true;
            }
        } else if (this.f1180d.s()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.iw) + "触发总超时或全部代码位响应结束.....totalTimeout：" + this.f1180d.s() + "  allWtfFinish:" + this.f1180d.ia());
            if (n.dq(this.s.ia())) {
                dq(new com.bytedance.msdk.api.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB, com.bytedance.msdk.api.dq.dq(AVMDLDataLoader.KeyIsStoRingBufferSizeKB)));
            } else {
                ox();
            }
            return true;
        }
        return false;
    }
}
