package com.bykv.vk.openvk.component.video.dq.d;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public class ig {
    private int iw;
    private final int mn;
    private final ArrayList<dq> ox;
    private final int p;
    private int s = -1;
    private static final Set<String> dq = new HashSet();

    /* renamed from: d, reason: collision with root package name */
    private static final Set<String> f532d = new HashSet();

    public class dq {

        /* renamed from: d, reason: collision with root package name */
        int f533d;
        final String dq;

        public dq(String str) {
            this.dq = str;
        }

        public void d() {
            ig.f532d.add(this.dq);
        }

        public void dq() {
            ig.dq.add(this.dq);
        }

        public String toString() {
            return this.dq;
        }
    }

    public ig(String str) {
        ArrayList<dq> arrayList = new ArrayList<>(1);
        this.ox = arrayList;
        arrayList.add(new dq(str));
        this.p = 1;
        this.mn = 1;
    }

    public ig(List<String> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("urls can't be empty");
        }
        int size = list.size();
        this.p = size;
        this.ox = new ArrayList<>(size);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (String str : list) {
            dq dqVar = new dq(str);
            if (dq.contains(str)) {
                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList2.add(dqVar);
            } else if (f532d.contains(str)) {
                arrayList = arrayList == null ? new ArrayList() : arrayList;
                arrayList.add(dqVar);
            } else {
                this.ox.add(dqVar);
            }
        }
        if (arrayList != null) {
            this.ox.addAll(arrayList);
        }
        if (arrayList2 != null) {
            this.ox.addAll(arrayList2);
        }
        Integer num = s.kk;
        this.mn = (num == null || num.intValue() <= 0) ? this.p >= 2 ? 1 : 2 : num.intValue();
    }

    public dq d() {
        if (!dq()) {
            throw new NoSuchElementException();
        }
        int i = this.s + 1;
        if (i >= this.p - 1) {
            this.s = -1;
            this.iw++;
        } else {
            this.s = i;
        }
        dq dqVar = this.ox.get(i);
        dqVar.f533d = (this.iw * this.p) + this.s;
        return dqVar;
    }

    public boolean dq() {
        return this.iw < this.mn;
    }
}
