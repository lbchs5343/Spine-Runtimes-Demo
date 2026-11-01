package com.bytedance.sdk.component.mn;

import android.content.Context;

/* loaded from: classes.dex */
public class p {

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private volatile String f2007d;
        private volatile Context dq;
        private volatile int ia;
        private volatile com.bytedance.sdk.component.mn.dq.ox iw;
        private volatile boolean mn;
        private volatile int ox;
        private volatile boolean p;
        private volatile boolean s;

        private com.bytedance.sdk.component.mn.dq d() {
            return this.s ? com.bytedance.sdk.component.mn.ox.dq.dq.d(this.f2007d) : com.bytedance.sdk.component.mn.ox.d.d.dq(this.f2007d, this.dq);
        }

        private com.bytedance.sdk.component.mn.dq ox() {
            com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.component.mn.d.dq.dq.dq(this.dq, this.f2007d, this.s, this.ia);
            this.mn = true;
            if (dq != null) {
                return dq;
            }
            this.mn = false;
            return d();
        }

        public dq d(int i) {
            this.ia = i;
            return this;
        }

        public dq d(boolean z) {
            this.s = z;
            return this;
        }

        public com.bytedance.sdk.component.mn.dq dq() {
            com.bytedance.sdk.component.mn.dq d2 = this.ox != 2 ? d() : ox();
            if (this.p) {
                com.bytedance.sdk.component.mn.dq.d dVar = new com.bytedance.sdk.component.mn.dq.d(d2);
                dVar.dq(new com.bytedance.sdk.component.mn.dq.dq());
                d2 = dVar;
            }
            if (this.iw == null) {
                return d2;
            }
            com.bytedance.sdk.component.mn.dq.d dVar2 = new com.bytedance.sdk.component.mn.dq.d(d2);
            dVar2.dq(this.iw);
            return dVar2;
        }

        public dq dq(int i) {
            this.ox = i;
            return this;
        }

        public dq dq(Context context) {
            if (context == null) {
                return this;
            }
            this.dq = context.getApplicationContext();
            ox.dq(this.dq);
            return this;
        }

        public dq dq(String str) {
            this.f2007d = str;
            return this;
        }

        public dq dq(boolean z) {
            this.p = z;
            return this;
        }
    }
}
