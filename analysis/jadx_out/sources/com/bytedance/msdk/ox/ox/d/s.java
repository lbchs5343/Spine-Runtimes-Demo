package com.bytedance.msdk.ox.ox.d;

import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ox.ox.d.dq;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class s implements dq.InterfaceC0083dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.ox.s.d.d f1179d;
    private List<dq> dq = new CopyOnWriteArrayList();
    private com.bytedance.msdk.ox.s.dq.d ox;

    public s(List<dq> list) {
        if (n.dq(list)) {
            return;
        }
        this.dq.addAll(list);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.InterfaceC0083dq
    public com.bytedance.msdk.ox.s.dq.d d() {
        return this.ox;
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.InterfaceC0083dq
    public com.bytedance.msdk.ox.s.d.d dq() {
        return this.f1179d;
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.InterfaceC0083dq
    public void dq(dq dqVar) {
        int indexOf;
        if (n.dq(this.dq) || dqVar == null || (indexOf = this.dq.indexOf(dqVar)) == -1 || indexOf >= this.dq.size() - 1) {
            return;
        }
        this.dq.get(indexOf + 1).dq(this);
    }

    public void dq(com.bytedance.msdk.ox.s.dq.d dVar, com.bytedance.msdk.ox.s.d.d dVar2) {
        this.ox = dVar;
        this.f1179d = dVar2;
        if (n.dq(this.dq)) {
            return;
        }
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.ox.d.s.1
            @Override // java.lang.Runnable
            public void run() {
                ((dq) s.this.dq.get(0)).dq(s.this);
            }
        });
    }
}
