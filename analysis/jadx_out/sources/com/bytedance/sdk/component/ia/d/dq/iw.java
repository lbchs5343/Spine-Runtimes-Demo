package com.bytedance.sdk.component.ia.d.dq;

import com.bytedance.sdk.component.ia.d.dq.d.mn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public class iw implements s {
    private List<com.bytedance.sdk.component.ia.d.dq.d.dq> dq = new ArrayList();

    public iw(Queue<String> queue, com.bytedance.sdk.component.ia.dq.s sVar) {
        if (com.bytedance.sdk.component.ia.d.d.dq.dq(sVar)) {
            this.dq.add(new com.bytedance.sdk.component.ia.d.dq.d.ox(sVar.mn(), queue, sVar));
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.s(sVar)) {
            this.dq.add(new com.bytedance.sdk.component.ia.d.dq.d.p(sVar.dq() != null ? sVar.dq() : sVar.ia(), queue, sVar));
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.d(sVar)) {
            this.dq.add(new com.bytedance.sdk.component.ia.d.dq.d.s(sVar.ia(), queue, sVar));
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.ox(sVar)) {
            this.dq.add(new com.bytedance.sdk.component.ia.d.dq.d.iw(sVar.ia(), queue, sVar));
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.p(sVar)) {
            this.dq.add(new com.bytedance.sdk.component.ia.d.dq.d.d(sVar.kk(), queue, sVar));
        }
        if (com.bytedance.sdk.component.ia.d.d.dq.iw(sVar)) {
            this.dq.add(new mn(sVar.iw(), queue, sVar));
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public d dq(int i, List<com.bytedance.sdk.component.ia.dq.d> list) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.d.dq> it = this.dq.iterator();
        d dVar = null;
        while (it.hasNext()) {
            dVar = it.next().dq(i, list);
            if (dVar.dq()) {
                break;
            }
        }
        return dVar;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, String str) {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, List<String> list) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.d.dq> it = this.dq.iterator();
        while (it.hasNext()) {
            List<com.bytedance.sdk.component.ia.dq.d> dq = it.next().dq(i, dVar, list, "get");
            if (dq != null && dq.size() != 0) {
                return dq;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public void dq(com.bytedance.sdk.component.ia.dq.d dVar, int i) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.d.dq> it = this.dq.iterator();
        while (it.hasNext()) {
            it.next().d(dVar);
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public boolean dq(int i, boolean z, String str, com.bytedance.sdk.component.ia.dq.d dVar) {
        Iterator<com.bytedance.sdk.component.ia.d.dq.d.dq> it = this.dq.iterator();
        while (it.hasNext()) {
            if (it.next().dq(i, str, dVar)) {
                return true;
            }
        }
        return false;
    }
}
