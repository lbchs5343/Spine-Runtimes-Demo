package com.bytedance.msdk.ox.iw.dq;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.ia.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class d implements dq {
    public boolean dq(s sVar, List<no> list) {
        if (sVar == null || TextUtils.isEmpty(sVar.b()) || !sVar.jn() || n.dq(list)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Collections.sort(arrayList);
        return !n.d(arrayList) && sVar.b().equals(((no) arrayList.get(0)).cd());
    }

    @Override // com.bytedance.msdk.ox.iw.dq.dq
    public boolean dq(com.bytedance.msdk.ox.s.dq.d dVar, s sVar, List<no> list) {
        if (sVar == null || dVar == null) {
            return false;
        }
        if (dVar.mp().iw(com.bytedance.msdk.ox.mn.s.dq(dVar.ig(), sVar)) == 0) {
            return true;
        }
        return dq(sVar, list);
    }
}
