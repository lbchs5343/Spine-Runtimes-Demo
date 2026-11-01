package com.ss.android.download.api.model;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    public String f9111d;
    public String dq;
    public String ox;
    public String p;
    public String s;

    /* renamed from: com.ss.android.download.api.model.dq$dq, reason: collision with other inner class name */
    public static class C0212dq {

        /* renamed from: d, reason: collision with root package name */
        private String f9112d;
        private String dq;
        private String ox;
        private String p;
        private String s;

        public C0212dq d(String str) {
            this.f9112d = str;
            return this;
        }

        public C0212dq dq(String str) {
            this.dq = str;
            return this;
        }

        public dq dq() {
            return new dq(this);
        }

        public C0212dq ox(String str) {
            this.p = str;
            return this;
        }

        public C0212dq p(String str) {
            this.s = str;
            return this;
        }
    }

    public dq(C0212dq c0212dq) {
        this.f9111d = "";
        this.dq = c0212dq.dq;
        this.f9111d = c0212dq.f9112d;
        this.ox = c0212dq.ox;
        this.p = c0212dq.p;
        this.s = c0212dq.s;
    }
}
