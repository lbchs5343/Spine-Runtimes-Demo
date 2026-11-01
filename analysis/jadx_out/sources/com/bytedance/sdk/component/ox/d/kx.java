package com.bytedance.sdk.component.ox.d;

import com.bytedance.sdk.component.ox.d.cd;
import g.tn;
import java.net.URL;

/* loaded from: classes.dex */
public final class kx {

    /* renamed from: d, reason: collision with root package name */
    final String f2129d;
    final gh dq;
    public ji iw;
    private volatile p mn;
    final cd ox;
    final h p;
    final Object s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        String f2130d;
        gh dq;
        ji iw;
        cd.dq ox;
        h p;
        Object s;

        public dq() {
            this.f2130d = "GET";
            this.ox = new cd.dq();
        }

        public dq(kx kxVar) {
            this.dq = kxVar.dq;
            this.f2130d = kxVar.f2129d;
            this.p = kxVar.p;
            this.s = kxVar.s;
            this.ox = kxVar.ox.d();
            this.iw = kxVar.iw;
        }

        public dq d(String str) {
            this.ox.d(str);
            return this;
        }

        public dq d(String str, String str2) {
            this.ox.dq(str, str2);
            return this;
        }

        public dq delete() {
            return delete(com.bytedance.sdk.component.ox.d.dq.ox.p);
        }

        public dq delete(h hVar) {
            return dq("DELETE", hVar);
        }

        public dq dq(cd cdVar) {
            this.ox = cdVar.d();
            return this;
        }

        public dq dq(gh ghVar) {
            if (ghVar == null) {
                throw new NullPointerException("url == null");
            }
            this.dq = ghVar;
            return this;
        }

        public dq dq(p pVar) {
            String pVar2 = pVar.toString();
            return pVar2.isEmpty() ? d("Cache-Control") : dq("Cache-Control", pVar2);
        }

        public dq dq(Object obj) {
            this.s = obj;
            return this;
        }

        public dq dq(String str) {
            String str2;
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str2 = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str2 = "https:" + str.substring(4);
            } else {
                str2 = str;
            }
            gh s = gh.s(str2);
            if (s != null) {
                return dq(s);
            }
            throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str2)));
        }

        public dq dq(String str, h hVar) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (hVar != null && !com.bytedance.sdk.component.ox.d.dq.ox.iw.ox(str)) {
                throw new IllegalArgumentException(tn.ad("method ", str, " must not have a request body."));
            }
            if (hVar == null && com.bytedance.sdk.component.ox.d.dq.ox.iw.d(str)) {
                throw new IllegalArgumentException(tn.ad("method ", str, " must have a request body."));
            }
            this.f2130d = str;
            this.p = hVar;
            return this;
        }

        public dq dq(String str, String str2) {
            this.ox.ox(str, str2);
            return this;
        }

        public dq dq(URL url) {
            if (url == null) {
                throw new NullPointerException("url == null");
            }
            gh dq = gh.dq(url);
            if (dq != null) {
                return dq(dq);
            }
            throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(url)));
        }

        public kx dq() {
            if (this.dq != null) {
                return new kx(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    public kx(dq dqVar) {
        this.dq = dqVar.dq;
        this.f2129d = dqVar.f2130d;
        this.ox = dqVar.ox.dq();
        this.p = dqVar.p;
        Object obj = dqVar.s;
        this.s = obj == null ? this : obj;
        ji jiVar = dqVar.iw;
        if (jiVar != null) {
            this.iw = jiVar;
        } else {
            this.iw = new ji();
        }
    }

    public String d() {
        return this.f2129d;
    }

    public gh dq() {
        return this.dq;
    }

    public String dq(String str) {
        return this.ox.dq(str);
    }

    public boolean ia() {
        return this.dq.p();
    }

    public dq iw() {
        return new dq(this);
    }

    public p mn() {
        p pVar = this.mn;
        if (pVar != null) {
            return pVar;
        }
        p dq2 = p.dq(this.ox);
        this.mn = dq2;
        return dq2;
    }

    public cd ox() {
        return this.ox;
    }

    public h p() {
        return this.p;
    }

    public Object s() {
        return this.s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.f2129d);
        sb.append(", url=");
        sb.append(this.dq);
        sb.append(", tag=");
        Object obj = this.s;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
