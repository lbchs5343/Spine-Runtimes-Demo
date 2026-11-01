package com.bytedance.sdk.openadsdk.core.no;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dq.d.mn;
import com.bytedance.sdk.component.adexpress.dq.ox.p;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class dq {
    public static void dq(List<j> list, mn.dq dqVar) {
        p dk;
        if (dqVar == null) {
            return;
        }
        if (list == null || list.size() <= 0) {
            dqVar.d();
            dqVar.d();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (j jVar : list) {
            if (jVar != null && !jVar.ou() && ((dk = jVar.dk()) != null || (dk = jVar.sy()) != null)) {
                arrayList.add(dk);
            }
        }
        if (arrayList.size() <= 0) {
            dqVar.d();
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            p pVar = (p) it.next();
            String str = pVar.iw;
            final String str2 = pVar.dq;
            final String str3 = pVar.ox;
            final String str4 = pVar.f1680d;
            final String str5 = pVar.p;
            final String str6 = pVar.s;
            final String iw = TextUtils.isEmpty(str) ? com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() != null ? com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().iw() : "" : str;
            final mn.dq dqVar2 = dqVar;
            com.bytedance.sdk.component.o.mn.dq(new kk("saveTemplate") { // from class: com.bytedance.sdk.openadsdk.core.no.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    mn.dq().dq(str2, str3, str4, str5, str6, iw, dqVar2);
                }
            }, 10);
            dqVar = dqVar2;
        }
    }
}
