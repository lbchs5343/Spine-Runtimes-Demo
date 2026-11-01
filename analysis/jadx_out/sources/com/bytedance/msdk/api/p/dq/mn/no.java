package com.bytedance.msdk.api.p.dq.mn;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class no {

    /* renamed from: d, reason: collision with root package name */
    public final int f781d;
    public final int dq;
    public final int ia;
    public final int ig;
    public final int iw;
    public final int kk;
    public final int mn;
    public final int mp;
    public final int no;
    public final int o;
    public final int ox;
    public final int p;
    public final Map<String, Integer> q;
    public final int s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        protected int f782d;
        protected int dq;
        protected int ia;
        protected int ig;
        protected int iw;
        protected int kk;
        protected int mn;
        protected int mp;
        protected int no;
        protected int o;
        protected int ox;
        protected int p;
        protected Map<String, Integer> q;
        protected int s;

        public dq(int i) {
            this.q = Collections.EMPTY_MAP;
            this.dq = i;
            this.q = new HashMap();
        }

        public dq d(int i) {
            this.kk = i;
            return this;
        }

        public dq dq(int i) {
            this.f782d = i;
            return this;
        }

        public dq dq(Map<String, Integer> map) {
            this.q = new HashMap(map);
            return this;
        }

        public no dq() {
            return new no(this);
        }

        public dq ia(int i) {
            this.mn = i;
            return this;
        }

        public dq iw(int i) {
            this.iw = i;
            return this;
        }

        public dq kk(int i) {
            this.ox = i;
            return this;
        }

        public dq mn(int i) {
            this.ia = i;
            return this;
        }

        public dq no(int i) {
            this.s = i;
            return this;
        }

        public dq o(int i) {
            this.p = i;
            return this;
        }

        public dq ox(int i) {
            this.o = i;
            return this;
        }

        public dq p(int i) {
            this.no = i;
            return this;
        }

        public dq s(int i) {
            this.ig = i;
            return this;
        }
    }

    public no(dq dqVar) {
        this.dq = dqVar.dq;
        this.f781d = dqVar.f782d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw;
        this.mn = dqVar.mn;
        this.ia = dqVar.ia;
        this.q = dqVar.q;
        this.kk = dqVar.o;
        this.o = dqVar.no;
        this.no = dqVar.ig;
        this.ig = dqVar.kk;
        this.mp = dqVar.mp;
    }

    public static no dq(com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar) {
        if (pVar == null) {
            return null;
        }
        dq dqVar = new dq(pVar.dq());
        dqVar.dq(pVar.d()).o(pVar.p()).kk(pVar.ox()).ox(pVar.kk()).p(pVar.o()).s(pVar.no()).iw(pVar.iw()).ia(pVar.mn()).no(pVar.s()).d(pVar.ig()).mn(pVar.ia()).dq(pVar.mp());
        return dqVar.dq();
    }

    public static com.bytedance.msdk.dq.p.d.dq dq(no noVar) {
        if (noVar != null) {
            return new com.bytedance.msdk.dq.p.d.dq(noVar);
        }
        return null;
    }
}
