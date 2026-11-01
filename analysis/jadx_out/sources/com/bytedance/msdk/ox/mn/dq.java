package com.bytedance.msdk.ox.mn;

import android.os.SystemClock;
import com.bytedance.msdk.s.iw;
import java.util.List;

/* loaded from: classes.dex */
public class dq {
    private static com.bytedance.msdk.d.s dq(List<com.bytedance.msdk.d.s> list) {
        com.bytedance.msdk.d.s sVar = null;
        if (list != null && list.size() != 0) {
            for (com.bytedance.msdk.d.s sVar2 : list) {
                if (sVar == null || sVar2.z() < sVar.z()) {
                    sVar = sVar2;
                }
            }
        }
        return sVar;
    }

    public static void dq(com.bytedance.msdk.ox.s.dq.d dVar, List<com.bytedance.msdk.d.s> list, boolean z) {
        if (dVar == null) {
            return;
        }
        com.bytedance.msdk.d.s dq = dq(list);
        if (dVar.u()) {
            return;
        }
        dVar.ox(SystemClock.elapsedRealtime());
        iw.dq(dq, dVar.gh(), dVar.ig(), dVar.ir() - dVar.op(), dVar.c().dq, !dVar.k(), list != null ? list.size() : 0, dVar.c().s, z);
        dVar.p(true);
    }
}
