package com.bytedance.msdk.api.p;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.ia;
import com.bytedance.msdk.api.p.ig;
import com.bytedance.msdk.api.p.p;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f762d;
    private String dq;

    /* renamed from: f, reason: collision with root package name */
    private boolean f763f;
    private p ia;
    private boolean ig;
    private ig iw;
    private ValueSet jy;
    private iw kk;
    private ia mn;
    private JSONObject mp;
    private boolean no;
    private Map<String, Object> o;
    private boolean ox;
    private String p;
    private Map<String, Object> q;
    private boolean s;

    /* renamed from: com.bytedance.msdk.api.p.dq$dq, reason: collision with other inner class name */
    public static class C0038dq {

        /* renamed from: d, reason: collision with root package name */
        private String f778d;
        private String dq;

        /* renamed from: f, reason: collision with root package name */
        private boolean f779f;
        private p ia;
        private ig iw;
        private ValueSet jy;
        private iw kk;
        private ia mn;
        private JSONObject mp;
        private Map<String, Object> o;
        private Map<String, Object> q;
        private boolean ox = false;
        private String p = "";
        private boolean s = false;
        private boolean no = false;
        private boolean ig = false;

        public C0038dq d(String str) {
            this.f778d = str;
            return this;
        }

        public C0038dq d(boolean z) {
            this.s = z;
            return this;
        }

        public C0038dq dq(ValueSet valueSet) {
            this.jy = valueSet;
            return this;
        }

        public C0038dq dq(ia iaVar) {
            this.mn = iaVar;
            return this;
        }

        public C0038dq dq(ig igVar) {
            this.iw = igVar;
            return this;
        }

        public C0038dq dq(iw iwVar) {
            this.kk = iwVar;
            return this;
        }

        public C0038dq dq(String str) {
            this.dq = str;
            return this;
        }

        public C0038dq dq(Map<String, Object> map) {
            if (map != null && !map.isEmpty()) {
                if (this.o == null) {
                    this.o = new HashMap();
                }
                this.o.putAll(map);
            }
            return this;
        }

        public C0038dq dq(JSONObject jSONObject) {
            this.mp = jSONObject;
            return this;
        }

        public C0038dq dq(boolean z) {
            this.ox = z;
            return this;
        }

        public dq dq() {
            return new dq(this);
        }

        public C0038dq ox(String str) {
            this.p = str;
            return this;
        }

        public C0038dq ox(boolean z) {
            this.no = z;
            return this;
        }

        public C0038dq p(boolean z) {
            this.f779f = z;
            return this;
        }
    }

    private dq(C0038dq c0038dq) {
        this.dq = c0038dq.dq;
        this.f762d = c0038dq.f778d;
        this.ox = c0038dq.ox;
        this.p = c0038dq.p;
        this.s = c0038dq.s;
        if (c0038dq.iw != null) {
            this.iw = c0038dq.iw;
        } else {
            this.iw = new ig.dq().dq();
        }
        if (c0038dq.mn != null) {
            this.mn = c0038dq.mn;
        } else {
            this.mn = new ia.dq().dq();
        }
        if (c0038dq.ia != null) {
            this.ia = c0038dq.ia;
        } else {
            this.ia = new p.dq().dq();
        }
        if (c0038dq.kk != null) {
            this.kk = c0038dq.kk;
        } else {
            this.kk = new iw();
        }
        this.o = c0038dq.o;
        this.no = c0038dq.no;
        this.ig = c0038dq.ig;
        this.mp = c0038dq.mp;
        this.q = c0038dq.q;
        this.jy = c0038dq.jy;
        this.f763f = c0038dq.f779f;
    }

    public String d() {
        return this.f762d;
    }

    public String dq() {
        return this.dq;
    }

    public boolean f() {
        return this.f763f;
    }

    public p ia() {
        return this.ia;
    }

    public boolean ig() {
        return this.ig;
    }

    public ig iw() {
        return this.iw;
    }

    public ValueSet jy() {
        return this.jy;
    }

    public iw kk() {
        return this.kk;
    }

    public ia mn() {
        return this.mn;
    }

    public JSONObject mp() {
        return this.mp;
    }

    public boolean no() {
        return this.no;
    }

    public Map<String, Object> o() {
        return this.o;
    }

    public boolean ox() {
        return this.ox;
    }

    public String p() {
        return this.p;
    }

    public Map<String, Object> q() {
        return this.q;
    }

    public boolean s() {
        return this.s;
    }
}
