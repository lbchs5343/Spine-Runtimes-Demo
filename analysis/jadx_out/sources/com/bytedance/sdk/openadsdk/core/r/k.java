package com.bytedance.sdk.openadsdk.core.r;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.core.d.p;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class k implements com.bytedance.sdk.component.adexpress.ox {
    public int cd;

    /* renamed from: d, reason: collision with root package name */
    public final float f3469d;
    public final float dq;

    /* renamed from: f, reason: collision with root package name */
    public SparseArray<p.dq> f3470f;
    public String fw;
    private JSONObject gh;
    public final int ia;
    public final String ig;
    public final long iw;
    public final boolean jy;
    public final int kk;
    public final int mn;
    public final String mp;
    public final String no;
    public final int o;
    public final float ox;
    public final float p;
    public final String q;
    public final long s;

    public static class dq {
        private String cd;

        /* renamed from: d, reason: collision with root package name */
        private long f3471d;

        /* renamed from: f, reason: collision with root package name */
        private boolean f3472f;
        private JSONObject fw;
        private int ia;
        private String ig;
        private float iw;
        private String jy;
        private int kk;
        private float mn;
        private String mp;
        private int no;
        private int o;
        private long ox;
        private float p;
        private String q;
        private float s;
        protected SparseArray<p.dq> dq = new SparseArray<>();
        private int gh = -1;

        public dq d(float f2) {
            this.s = f2;
            return this;
        }

        public dq d(int i) {
            this.kk = i;
            return this;
        }

        public dq d(long j) {
            this.ox = j;
            return this;
        }

        public dq d(String str) {
            this.mp = str;
            return this;
        }

        public dq dq(float f2) {
            this.p = f2;
            return this;
        }

        public dq dq(int i) {
            this.ia = i;
            return this;
        }

        public dq dq(long j) {
            this.f3471d = j;
            return this;
        }

        public dq dq(SparseArray<p.dq> sparseArray) {
            this.dq = sparseArray;
            return this;
        }

        public dq dq(String str) {
            this.ig = str;
            return this;
        }

        public dq dq(JSONObject jSONObject) {
            this.fw = jSONObject;
            return this;
        }

        public dq dq(boolean z) {
            this.f3472f = z;
            return this;
        }

        public k dq() {
            return new k(this);
        }

        public dq ox(float f2) {
            this.iw = f2;
            return this;
        }

        public dq ox(int i) {
            this.o = i;
            return this;
        }

        public dq ox(String str) {
            this.q = str;
            return this;
        }

        public dq p(float f2) {
            this.mn = f2;
            return this;
        }

        public dq p(int i) {
            this.no = i;
            return this;
        }

        public dq p(String str) {
            this.jy = str;
            return this;
        }

        public dq s(int i) {
            this.gh = i;
            return this;
        }

        public dq s(String str) {
            this.cd = str;
            return this;
        }
    }

    private k(dq dqVar) {
        this.cd = -1;
        this.dq = dqVar.mn;
        this.f3469d = dqVar.iw;
        this.ox = dqVar.s;
        this.p = dqVar.p;
        this.s = dqVar.ox;
        this.iw = dqVar.f3471d;
        this.mn = dqVar.ia;
        this.ia = dqVar.kk;
        this.kk = dqVar.o;
        this.o = dqVar.no;
        this.no = dqVar.ig;
        this.f3470f = dqVar.dq;
        this.jy = dqVar.f3472f;
        this.gh = dqVar.fw;
        this.ig = dqVar.mp;
        this.mp = dqVar.q;
        this.q = dqVar.jy;
        this.fw = dqVar.cd;
        this.cd = dqVar.gh;
    }

    public JSONObject dq() {
        if (this.gh == null) {
            this.gh = new JSONObject();
        }
        return this.gh;
    }
}
