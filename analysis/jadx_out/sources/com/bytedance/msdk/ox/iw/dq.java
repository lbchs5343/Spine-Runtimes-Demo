package com.bytedance.msdk.ox.iw;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.d;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.ox;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class dq {
    public static void dq(d dVar, com.bytedance.msdk.ox.s.dq.d dVar2, List<no> list) {
        if (dVar == null || dVar2 == null || list == null || list.size() == 0) {
            return;
        }
        for (s sVar : dVar2.ia()) {
            Iterator<no> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar) + "已经响应的广告: " + sVar.b() + "  没有在severBidding的waterFall列表中，需要被移除掉");
                    dVar2.ia().remove(sVar);
                    dVar2.kk().add(sVar);
                    break;
                }
                no next = it.next();
                if (sVar == null || next == null || !sVar.b().equals(next.cd())) {
                }
            }
        }
        ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar) + "已经响应的广告被serverBidding过滤完还剩: " + dVar2.ia().size());
    }

    public static boolean dq(com.bytedance.msdk.ox.s.dq.dq dqVar, List<no> list, String str) {
        if (list == null || dqVar == null || TextUtils.isEmpty(str) || dqVar.d() != 1) {
            return false;
        }
        Iterator<no> it = list.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().cd())) {
                return false;
            }
        }
        return true;
    }
}
