package com.bytedance.msdk.api.p;

/* loaded from: classes.dex */
public class ia {

    /* renamed from: d, reason: collision with root package name */
    private String f783d;
    private boolean dq;
    private boolean ox;
    private boolean p;

    public static class dq {
        private boolean dq = false;

        /* renamed from: d, reason: collision with root package name */
        private String f784d = null;
        private boolean ox = false;
        private boolean p = false;

        public dq d(boolean z) {
            this.ox = z;
            return this;
        }

        public dq dq(String str) {
            this.f784d = str;
            return this;
        }

        public dq dq(boolean z) {
            this.dq = z;
            return this;
        }

        public ia dq() {
            return new ia(this);
        }

        public dq ox(boolean z) {
            this.p = z;
            return this;
        }
    }

    private ia(dq dqVar) {
        this.dq = dqVar.dq;
        this.f783d = dqVar.f784d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
    }

    public boolean d() {
        return this.dq;
    }

    public String dq() {
        return this.f783d;
    }

    public boolean ox() {
        return this.ox;
    }

    public boolean p() {
        return this.p;
    }
}
