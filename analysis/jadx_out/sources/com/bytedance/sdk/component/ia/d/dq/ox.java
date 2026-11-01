package com.bytedance.sdk.component.ia.d.dq;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes.dex */
public class ox implements s {

    /* renamed from: d, reason: collision with root package name */
    private final p f1913d;
    private final s dq;
    private final Queue<String> ox;
    private com.bytedance.sdk.component.ia.dq.s p;

    public ox(com.bytedance.sdk.component.ia.dq.s sVar) {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.ox = concurrentLinkedQueue;
        this.p = sVar;
        this.dq = new iw(concurrentLinkedQueue, sVar);
        this.f1913d = new p(this.p);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:2|(3:3|4|(2:7|5))|8|9|10|11|12) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0079, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007a, code lost:
    
        r7 = new com.bytedance.sdk.component.ia.d.dq.d();
        r7.dq(false);
        r7.dq("db exception:" + r6.getMessage());
        com.bytedance.sdk.component.ia.d.ox.ox.ox(r6.getMessage(), r5.p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a0, code lost:
    
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
    
        r2 = new com.bytedance.sdk.component.ia.d.dq.d();
        r2.dq(false);
        r2.dq("mem exception:" + r1.getMessage());
        com.bytedance.sdk.component.ia.d.ox.ox.ox(r1.getMessage(), r5.p);
     */
    @Override // com.bytedance.sdk.component.ia.d.dq.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized d dq(int i, List<com.bytedance.sdk.component.ia.dq.d> list) {
        try {
            Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
            while (it.hasNext()) {
                this.ox.remove(it.next().ox());
            }
        } finally {
            this.dq.dq(i, list);
            d dVar = this.f1913d.dq(i, list);
            return dVar;
        }
        this.dq.dq(i, list);
        d dVar2 = this.f1913d.dq(i, list);
        return dVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        if (r7 == 2) goto L11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.ia.d.dq.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized List<com.bytedance.sdk.component.ia.dq.d> dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, String str) {
        List<com.bytedance.sdk.component.ia.dq.d> list;
        try {
            List<com.bytedance.sdk.component.ia.dq.d> dq = this.dq.dq(i, dVar, (List<String>) null);
            if (dq == 0 || dq.size() == 0) {
                ArrayList arrayList = new ArrayList(this.ox);
                int size = arrayList.size();
                List<com.bytedance.sdk.component.ia.dq.d> dq2 = this.f1913d.dq(i, dVar, arrayList);
                if (dq2 != 0 && dq2.size() != 0) {
                    dq2.size();
                    HashMap hashMap = new HashMap();
                    for (com.bytedance.sdk.component.ia.dq.d dVar2 : dq2) {
                        hashMap.put(dVar2.ox(), dVar2);
                    }
                    if (size != 0) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            if (hashMap.get(str2) != null) {
                                hashMap.remove(str2);
                            }
                        }
                    }
                    dq2.clear();
                    Set keySet = hashMap.keySet();
                    hashMap.size();
                    Iterator it2 = keySet.iterator();
                    while (it2.hasNext()) {
                        dq2.add(hashMap.get((String) it2.next()));
                    }
                    dq2.size();
                }
                list = dq2;
            } else {
                int size2 = dq.size();
                if (i != 1) {
                    list = dq;
                }
                List<com.bytedance.sdk.component.ia.dq.d> dq3 = this.f1913d.dq((com.bytedance.sdk.component.ia.dq.d) dq.get(0), size2, i);
                list = dq;
                if (dq3 != null) {
                    list = dq;
                    if (dq3.size() != 0) {
                        dq3.size();
                        HashMap hashMap2 = new HashMap();
                        for (com.bytedance.sdk.component.ia.dq.d dVar3 : dq3) {
                            hashMap2.put(dVar3.ox(), dVar3);
                        }
                        ArrayList arrayList2 = new ArrayList(this.ox);
                        arrayList2.size();
                        for (com.bytedance.sdk.component.ia.dq.d dVar4 : dq3) {
                            Iterator it3 = arrayList2.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (TextUtils.equals(dVar4.ox(), (String) it3.next())) {
                                        hashMap2.remove(dVar4.ox());
                                        break;
                                    }
                                }
                            }
                        }
                        for (com.bytedance.sdk.component.ia.dq.d dVar5 : dq) {
                            hashMap2.put(dVar5.ox(), dVar5);
                        }
                        dq.clear();
                        Set keySet2 = hashMap2.keySet();
                        hashMap2.size();
                        Iterator it4 = keySet2.iterator();
                        while (it4.hasNext()) {
                            dq.add(hashMap2.get((String) it4.next()));
                        }
                        dq3.clear();
                        list = dq;
                    }
                }
            }
            if (list != null && !list.isEmpty()) {
                Iterator<com.bytedance.sdk.component.ia.dq.d> it5 = list.iterator();
                while (it5.hasNext()) {
                    this.ox.offer(it5.next().ox());
                }
                return list;
            }
            return new ArrayList();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, List<String> list) {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public synchronized void dq(com.bytedance.sdk.component.ia.dq.d dVar, int i) {
        s sVar;
        if (i != 5) {
            try {
                if (this.p.p().dq(this.p.getContext()) && (sVar = this.dq) != null && dVar != null) {
                    sVar.dq(dVar, i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p pVar = this.f1913d;
        if (pVar != null && dVar != null) {
            pVar.dq(dVar, i);
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.s
    public synchronized boolean dq(int i, boolean z, String str, com.bytedance.sdk.component.ia.dq.d dVar) {
        if (this.dq.dq(i, z, str, dVar)) {
            com.bytedance.sdk.component.ia.d.ox.ox.d("_opt", "cacheManager check result : memory meet ".concat(String.valueOf(str)), this.p);
            return true;
        }
        if ((i != 1 && i != 2) || !this.f1913d.dq(i, z, str, dVar)) {
            return false;
        }
        com.bytedance.sdk.component.ia.d.ox.ox.d("_opt", "cacheManager check result : db meet ".concat(String.valueOf(str)), this.p);
        return true;
    }
}
