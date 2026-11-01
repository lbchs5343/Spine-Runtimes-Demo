package com.bytedance.embedapplog.util;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private final String[] f746d;
    private final String dq;
    private final String iw;
    private final String mn;
    private final String[] ox;
    private final String p;
    private final String s;

    /* renamed from: com.bytedance.embedapplog.util.dq$dq, reason: collision with other inner class name */
    public static class C0032dq {

        /* renamed from: d, reason: collision with root package name */
        private String[] f747d;
        private String dq;
        private String iw;
        private String mn;
        private String[] ox;
        private String p;
        private String s;

        public C0032dq d(String str) {
            this.p = str;
            return this;
        }

        public C0032dq d(String[] strArr) {
            this.ox = strArr;
            return this;
        }

        public C0032dq dq(String str) {
            this.dq = str;
            return this;
        }

        public C0032dq dq(String[] strArr) {
            this.f747d = strArr;
            return this;
        }

        public dq dq() {
            return new dq(this);
        }

        public C0032dq ox(String str) {
            this.s = str;
            return this;
        }

        public C0032dq p(String str) {
            this.mn = str;
            return this;
        }
    }

    private dq(C0032dq c0032dq) {
        this.dq = c0032dq.dq;
        this.f746d = c0032dq.f747d;
        this.ox = c0032dq.ox;
        this.p = c0032dq.p;
        this.s = c0032dq.s;
        this.iw = c0032dq.iw;
        this.mn = c0032dq.mn;
    }

    public static dq dq(int i) {
        return d.dq(i);
    }

    public String[] d() {
        return this.f746d;
    }

    public String dq() {
        return this.dq;
    }

    public String ox() {
        return this.p;
    }

    public String p() {
        return this.s;
    }
}
