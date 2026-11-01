package com.bytedance.sdk.component.dq;

import android.text.TextUtils;
import g.awf;

/* loaded from: classes.dex */
public class f {

    /* renamed from: d, reason: collision with root package name */
    public final String f1863d;
    public final int dq;
    public final String ia;
    public final String iw;
    public final String mn;
    public final String ox;
    public final String p;
    public final String s;

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f1864d;
        private String dq;
        private String iw;
        private String mn;
        private String ox;
        private String p;
        private String s;

        private dq() {
        }

        public dq d(String str) {
            this.f1864d = str;
            return this;
        }

        public dq dq(String str) {
            this.dq = str;
            return this;
        }

        public f dq() {
            return new f(this);
        }

        public dq iw(String str) {
            this.iw = str;
            return this;
        }

        public dq mn(String str) {
            this.mn = str;
            return this;
        }

        public dq ox(String str) {
            this.ox = str;
            return this;
        }

        public dq p(String str) {
            this.p = str;
            return this;
        }

        public dq s(String str) {
            this.s = str;
            return this;
        }
    }

    private f(dq dqVar) {
        this.f1863d = dqVar.dq;
        this.ox = dqVar.f1864d;
        this.p = dqVar.ox;
        this.s = dqVar.p;
        this.iw = dqVar.s;
        this.mn = dqVar.iw;
        this.dq = 1;
        this.ia = dqVar.mn;
    }

    private f(String str, int i) {
        this.f1863d = null;
        this.ox = null;
        this.p = null;
        this.s = null;
        this.iw = str;
        this.mn = null;
        this.dq = i;
        this.ia = null;
    }

    public static dq dq() {
        return new dq();
    }

    public static f dq(String str, int i) {
        return new f(str, i);
    }

    public static boolean dq(f fVar) {
        return fVar == null || fVar.dq != 1 || TextUtils.isEmpty(fVar.p) || TextUtils.isEmpty(fVar.s);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("methodName: ");
        sb.append(this.p);
        sb.append(", params: ");
        sb.append(this.s);
        sb.append(", callbackId: ");
        sb.append(this.iw);
        sb.append(", type: ");
        sb.append(this.ox);
        sb.append(", version: ");
        return awf.ad(sb, this.f1863d, ", ");
    }
}
