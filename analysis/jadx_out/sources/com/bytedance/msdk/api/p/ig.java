package com.bytedance.msdk.api.p;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ig {

    /* renamed from: d, reason: collision with root package name */
    private int f785d;
    private boolean dq;
    private Map<String, String> ia;
    private String[] iw;
    private String kk;
    private String mn;
    private boolean ox;
    private boolean p;
    private int[] s;

    public static class dq {
        private boolean dq = false;

        /* renamed from: d, reason: collision with root package name */
        private int f786d = 0;
        private boolean ox = true;
        private boolean p = false;
        private int[] s = {4, 3, 5};
        private String[] iw = new String[0];
        private String mn = "";
        private final Map<String, String> ia = new HashMap();
        private String kk = "";

        public dq d(String str) {
            this.kk = str;
            return this;
        }

        public dq d(boolean z) {
            this.ox = z;
            return this;
        }

        public dq dq(int i) {
            this.f786d = i;
            return this;
        }

        public dq dq(String str) {
            this.mn = str;
            return this;
        }

        public dq dq(Map<String, String> map) {
            this.ia.putAll(map);
            return this;
        }

        public dq dq(boolean z) {
            this.dq = z;
            return this;
        }

        public dq dq(int... iArr) {
            this.s = iArr;
            return this;
        }

        public ig dq() {
            return new ig(this);
        }
    }

    private ig(dq dqVar) {
        this.dq = dqVar.dq;
        this.f785d = dqVar.f786d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw;
        this.mn = dqVar.mn;
        this.ia = dqVar.ia;
        this.kk = dqVar.kk;
    }

    public int d() {
        return this.f785d;
    }

    public boolean dq() {
        return this.dq;
    }

    public Map<String, String> ia() {
        return this.ia;
    }

    public String[] iw() {
        return this.iw;
    }

    public String kk() {
        return this.kk;
    }

    public String mn() {
        return this.mn;
    }

    public boolean ox() {
        return this.ox;
    }

    public boolean p() {
        return this.p;
    }

    public int[] s() {
        return this.s;
    }
}
