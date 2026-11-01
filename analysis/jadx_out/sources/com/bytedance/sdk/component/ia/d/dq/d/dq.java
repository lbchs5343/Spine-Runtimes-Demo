package com.bytedance.sdk.component.ia.d.dq.d;

import com.bytedance.sdk.component.ia.dq.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes.dex */
public abstract class dq<T extends com.bytedance.sdk.component.ia.dq.d> extends com.bytedance.sdk.component.ia.d.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    public Queue<T> f1905d = new ConcurrentLinkedQueue();
    public com.bytedance.sdk.component.ia.d.p.d.dq dq;
    public String ox;
    public com.bytedance.sdk.component.ia.dq.s p;
    private Queue<String> s;

    public dq(com.bytedance.sdk.component.ia.d.p.d.dq dqVar, Queue<String> queue, String str, com.bytedance.sdk.component.ia.dq.s sVar) {
        this.dq = dqVar;
        this.s = queue;
        this.p = sVar;
        this.ox = str;
    }

    private void d(int i, List<T> list) {
        Queue<T> queue;
        com.bytedance.sdk.component.ia.dq.d dVar;
        if (i == -1 || i == 200 || i == 509 || i == -3) {
            this.f1905d.size();
            if (list == null || list.size() == 0 || (queue = this.f1905d) == null || queue.size() == 0) {
                return;
            }
            HashMap hashMap = new HashMap();
            for (T t : this.f1905d) {
                if (t != null) {
                    hashMap.put(t.ox(), t);
                }
            }
            for (T t2 : list) {
                if (t2 != null && (dVar = (com.bytedance.sdk.component.ia.dq.d) hashMap.get(t2.ox())) != null) {
                    this.f1905d.remove(dVar);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq
    public List<com.bytedance.sdk.component.ia.dq.d> d(int i, com.bytedance.sdk.component.ia.dq.d dVar, List<String> list, String str) {
        ArrayList arrayList = new ArrayList();
        do {
            T poll = this.f1905d.poll();
            if (poll == null) {
                break;
            }
            arrayList.add(poll);
        } while (arrayList.size() != this.dq.d());
        return arrayList;
    }

    public void d(T t) {
        if (this.f1905d == null || t == null || !dq(t)) {
            return;
        }
        this.f1905d.offer(t);
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq
    public boolean d(int i, String str, com.bytedance.sdk.component.ia.dq.d dVar) {
        int size = this.f1905d.size();
        int dq = this.dq.dq();
        com.bytedance.sdk.component.ia.d.ox.dq.d(i);
        return size >= dq;
    }

    public com.bytedance.sdk.component.ia.d.dq.d dq(int i, List<T> list) {
        com.bytedance.sdk.component.ia.d.dq.d dVar = new com.bytedance.sdk.component.ia.d.dq.d();
        if (list == null || list.size() == 0 || list.get(0) == null || !dq(list.get(0))) {
            dVar.dq(false);
            return dVar;
        }
        d(i, list);
        dVar.dq(true);
        return dVar;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq
    public boolean dq(String str) {
        return this.f1905d.size() > 0;
    }
}
