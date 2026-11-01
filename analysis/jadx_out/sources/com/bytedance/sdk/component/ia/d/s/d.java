package com.bytedance.sdk.component.ia.d.s;

import java.util.UUID;

/* loaded from: classes.dex */
public abstract class d implements Comparable<d>, Runnable {
    private String ox;
    private int dq = 5;

    /* renamed from: d, reason: collision with root package name */
    private String f1925d = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());

    public d(String str) {
        this.ox = str;
    }

    public int dq() {
        return this.dq;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        if (dq() < dVar.dq()) {
            return 1;
        }
        return dq() >= dVar.dq() ? -1 : 0;
    }

    public void dq(int i) {
        this.dq = i;
    }
}
