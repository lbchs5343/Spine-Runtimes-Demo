package com.bytedance.sdk.component.d.dq;

import com.bytedance.sdk.component.d.dq.iw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class q {
    public ig dq;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public Map<String, List<String>> f1856d;
        com.bytedance.sdk.component.d.dq.dq dq;
        jy iw;
        iw.dq mn;
        mn ox;
        String p;
        Object s;

        public dq() {
            this.f1856d = new HashMap();
            this.mn = new iw.dq();
        }

        public dq(q qVar) {
            this.ox = qVar.d();
            this.p = qVar.ox();
            this.f1856d = qVar.p();
            this.s = qVar.dq();
            this.iw = qVar.iw();
            this.dq = qVar.s();
        }

        public dq d(String str, String str2) {
            if (!this.f1856d.containsKey(str)) {
                this.f1856d.put(str, new ArrayList());
            }
            this.f1856d.get(str).add(str2);
            return this;
        }

        public q d() {
            return new q() { // from class: com.bytedance.sdk.component.d.dq.q.dq.1
                @Override // com.bytedance.sdk.component.d.dq.q
                public mn d() {
                    return dq.this.ox;
                }

                @Override // com.bytedance.sdk.component.d.dq.q
                public Object dq() {
                    return dq.this.s;
                }

                @Override // com.bytedance.sdk.component.d.dq.q
                public jy iw() {
                    return dq.this.iw;
                }

                @Override // com.bytedance.sdk.component.d.dq.q
                public String ox() {
                    return dq.this.p;
                }

                @Override // com.bytedance.sdk.component.d.dq.q
                public Map p() {
                    return dq.this.f1856d;
                }

                @Override // com.bytedance.sdk.component.d.dq.q
                public com.bytedance.sdk.component.d.dq.dq s() {
                    return dq.this.dq;
                }

                public String toString() {
                    return "";
                }
            };
        }

        public dq dq() {
            return dq("GET", (jy) null);
        }

        public dq dq(com.bytedance.sdk.component.d.dq.dq dqVar) {
            this.dq = dqVar;
            return this;
        }

        public dq dq(iw iwVar) {
            if (iwVar != null) {
                this.f1856d = iwVar.d();
            }
            return this;
        }

        public dq dq(jy jyVar) {
            return dq("POST", jyVar);
        }

        public dq dq(mn mnVar) {
            this.ox = mnVar;
            return this;
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
            mn ox = mn.ox(str2);
            if (ox != null) {
                return dq(ox);
            }
            throw new IllegalArgumentException("unexpected url: ".concat(String.valueOf(str2)));
        }

        public dq dq(String str, jy jyVar) {
            this.p = str;
            this.iw = jyVar;
            return this;
        }

        public dq dq(String str, String str2) {
            return d(str, str2);
        }
    }

    public abstract mn d();

    public abstract Object dq();

    public void dq(ig igVar) {
        this.dq = igVar;
    }

    public jy iw() {
        return null;
    }

    public dq mn() {
        return new dq(this);
    }

    public abstract String ox();

    public abstract Map<String, List<String>> p();

    public abstract com.bytedance.sdk.component.d.dq.dq s();
}
