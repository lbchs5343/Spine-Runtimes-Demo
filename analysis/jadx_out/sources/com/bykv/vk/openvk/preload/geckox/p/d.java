package com.bykv.vk.openvk.preload.geckox.p;

import com.bykv.vk.openvk.preload.dq.d.dq.q;
import com.bykv.vk.openvk.preload.dq.iw;
import com.bykv.vk.openvk.preload.dq.mn;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    private static d f670d = new d();
    public iw dq;

    private d() {
        com.bykv.vk.openvk.preload.dq.dq dqVar;
        com.bykv.vk.openvk.preload.dq.dq dqVar2;
        com.bykv.vk.openvk.preload.dq.dq dqVar3;
        mn mnVar = new mn();
        mnVar.dq(Boolean.class, new dq());
        mnVar.dq(Boolean.TYPE, new dq());
        ArrayList arrayList = new ArrayList(mnVar.iw.size() + mnVar.s.size() + 3);
        arrayList.addAll(mnVar.s);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(mnVar.iw);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        String str = mnVar.ia;
        int i = mnVar.kk;
        int i2 = mnVar.o;
        if (str == null || "".equals(str.trim())) {
            if (i != 2 && i2 != 2) {
                com.bykv.vk.openvk.preload.dq.dq dqVar4 = new com.bykv.vk.openvk.preload.dq.dq(Date.class, i, i2);
                com.bykv.vk.openvk.preload.dq.dq dqVar5 = new com.bykv.vk.openvk.preload.dq.dq(Timestamp.class, i, i2);
                com.bykv.vk.openvk.preload.dq.dq dqVar6 = new com.bykv.vk.openvk.preload.dq.dq(java.sql.Date.class, i, i2);
                dqVar = dqVar4;
                dqVar2 = dqVar5;
                dqVar3 = dqVar6;
            }
            this.dq = new iw(mnVar.dq, mnVar.ox, mnVar.p, mnVar.mn, mnVar.no, mnVar.jy, mnVar.mp, mnVar.q, mnVar.f631f, mnVar.ig, mnVar.f630d, mnVar.ia, mnVar.kk, mnVar.o, mnVar.s, mnVar.iw, arrayList);
        }
        dqVar = new com.bykv.vk.openvk.preload.dq.dq(Date.class, str);
        dqVar2 = new com.bykv.vk.openvk.preload.dq.dq(Timestamp.class, str);
        dqVar3 = new com.bykv.vk.openvk.preload.dq.dq(java.sql.Date.class, str);
        arrayList.add(q.dq(Date.class, dqVar));
        arrayList.add(q.dq(Timestamp.class, dqVar2));
        arrayList.add(q.dq(java.sql.Date.class, dqVar3));
        this.dq = new iw(mnVar.dq, mnVar.ox, mnVar.p, mnVar.mn, mnVar.no, mnVar.jy, mnVar.mp, mnVar.q, mnVar.f631f, mnVar.ig, mnVar.f630d, mnVar.ia, mnVar.kk, mnVar.o, mnVar.s, mnVar.iw, arrayList);
    }

    public static d dq() {
        return f670d;
    }
}
