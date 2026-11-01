package com.bytedance.embedapplog;

import java.util.LinkedList;

/* loaded from: classes.dex */
public class h {
    private static final LinkedList<ds> dq = new LinkedList<>();

    /* renamed from: d, reason: collision with root package name */
    private static final LinkedList<ds> f718d = new LinkedList<>();

    public static void dq() {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        LinkedList<ds> linkedList3 = dq;
        synchronized (linkedList3) {
            linkedList.addAll(linkedList3);
            LinkedList<ds> linkedList4 = f718d;
            linkedList2.addAll(linkedList4);
            linkedList3.clear();
            linkedList4.clear();
        }
        while (!linkedList.isEmpty()) {
            le.dq((ds) linkedList.poll());
        }
    }

    public static void dq(ds dsVar) {
        LinkedList<ds> linkedList = dq;
        synchronized (linkedList) {
            try {
                if (linkedList.size() > 200) {
                    ds poll = linkedList.poll();
                    jo.d("drop event in cache", null);
                    f718d.add(poll);
                }
                linkedList.add(dsVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
