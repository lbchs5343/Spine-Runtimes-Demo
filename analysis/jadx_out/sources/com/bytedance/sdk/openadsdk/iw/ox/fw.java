package com.bytedance.sdk.openadsdk.iw.ox;

import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class fw {

    /* renamed from: d, reason: collision with root package name */
    private String f3776d;
    private long dq;
    private int ox;
    private com.bykv.vk.openvk.component.video.api.ox.p p;
    private j s;

    public static class dq {
        private int ia;
        private int kk;
        private int mn;
        private int no;
        private int o;
        private long dq = 0;

        /* renamed from: d, reason: collision with root package name */
        private long f3777d = 0;
        private long ox = 0;
        private boolean p = false;
        private int s = 0;
        private int iw = 0;
        private boolean ig = false;

        public long d() {
            return this.f3777d;
        }

        public void d(int i) {
            this.iw = i;
        }

        public void d(long j) {
            this.f3777d = j;
        }

        public void d(boolean z) {
            this.p = z;
        }

        public long dq() {
            return this.dq;
        }

        public void dq(int i) {
            this.s = i;
        }

        public void dq(long j) {
            this.dq = j;
        }

        public void dq(boolean z) {
            this.ig = z;
        }

        public int ia() {
            long j = this.ox;
            if (j <= 0) {
                return 0;
            }
            return Math.min((int) ((this.dq * 100) / j), 100);
        }

        public boolean ig() {
            return this.ig;
        }

        public int iw() {
            return this.mn;
        }

        public void iw(int i) {
            this.no = i;
        }

        public int kk() {
            return this.kk;
        }

        public int mn() {
            return this.ia;
        }

        public boolean mp() {
            return this.p;
        }

        public int no() {
            return this.no;
        }

        public int o() {
            return this.o;
        }

        public long ox() {
            return this.ox;
        }

        public void ox(int i) {
            this.mn = i;
        }

        public void ox(long j) {
            this.ox = j;
        }

        public int p() {
            return this.s;
        }

        public void p(int i) {
            this.ia = i;
        }

        public int s() {
            return this.iw;
        }

        public void s(int i) {
            this.kk = i;
        }
    }

    public fw(long j, String str, int i, com.bykv.vk.openvk.component.video.api.ox.p pVar, j jVar) {
        this.dq = j;
        this.f3776d = str;
        this.ox = i;
        this.p = pVar;
        this.s = jVar;
    }

    public String d() {
        return this.f3776d;
    }

    public long dq() {
        return this.dq;
    }

    public int ox() {
        return this.ox;
    }

    public com.bykv.vk.openvk.component.video.api.ox.p p() {
        return this.p;
    }

    public j s() {
        return this.s;
    }
}
