package com.bytedance.sdk.component.d.dq;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class s extends jy {

    /* renamed from: d, reason: collision with root package name */
    List<String> f1858d;
    List<String> dq;

    public static final class dq {
        private final List<String> dq = new ArrayList();

        /* renamed from: d, reason: collision with root package name */
        private final List<String> f1859d = new ArrayList();

        public dq dq(String str, String str2) {
            this.dq.add(str);
            this.f1859d.add(str2);
            return this;
        }

        public s dq() {
            return new s(this.dq, this.f1859d);
        }
    }

    public s(List<String> list, List<String> list2) {
        this.dq = list;
        this.f1858d = list2;
    }
}
