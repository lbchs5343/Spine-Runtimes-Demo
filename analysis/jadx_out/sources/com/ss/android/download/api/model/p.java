package com.ss.android.download.api.model;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private String f9117d;
    private String dq;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f9118d;
        private String dq;

        public dq d(String str) {
            this.f9118d = str;
            return this;
        }

        public dq dq(String str) {
            this.dq = str;
            return this;
        }

        public p dq() {
            return new p(this);
        }
    }

    public p(dq dqVar) {
        this.dq = dqVar.dq;
        this.f9117d = dqVar.f9118d;
    }

    public String dq() {
        return this.dq;
    }
}
