package com.bytedance.sdk.component.no.dq;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.no.p.p;
import com.bytedance.sdk.component.no.p.s;
import g.cgd;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f2010d;
    private JSONObject dq;
    private String ia;
    private p iw;
    private Map<String, Object> kk;
    private p mn;
    private com.bytedance.sdk.component.no.p.d no;
    private int o = 1;
    private com.bytedance.sdk.component.no.ox.dq ox;
    private String p;
    private String s;

    public dq(com.bytedance.sdk.component.no.ox.dq dqVar, JSONObject jSONObject, Map<String, Object> map) {
        this.ox = dqVar;
        this.dq = jSONObject;
        this.f2010d = map;
    }

    public dq(StringBuilder sb, JSONObject jSONObject, Map<String, Object> map) {
        this.dq = jSONObject;
        this.f2010d = map;
    }

    private void d(String str) {
        JSONObject dq = com.bytedance.sdk.component.no.ia.d.dq(str);
        if (dq == null) {
            return;
        }
        Iterator<String> keys = dq.keys();
        this.kk = new HashMap();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!TextUtils.isEmpty(next)) {
                Object opt = dq.opt(next);
                if (opt instanceof String) {
                    opt = dq((String) opt, this.dq);
                }
                this.kk.put(next, opt);
            }
        }
    }

    private static Object dq(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return str;
        }
        try {
            if (!str.startsWith("${") || !str.endsWith("}")) {
                return str;
            }
            cgd cgdVar = new cgd(str.substring(2, str.length() - 1));
            HashMap hashMap = new HashMap();
            hashMap.put("default_key", jSONObject);
            return cgdVar.f12820d.dq(hashMap);
        } catch (Throwable unused) {
            return str;
        }
    }

    private void ia() {
        if (this.o != 2) {
            com.bytedance.sdk.component.no.ox.dq dqVar = this.ox;
            if (dqVar == null) {
                return;
            } else {
                this.ia = dqVar.d();
            }
        }
        if (!TextUtils.isEmpty(this.ia)) {
            this.p = Uri.parse(this.ia).getHost();
        }
        if (!TextUtils.isEmpty(this.p)) {
            String str = this.p.split("/")[0];
            this.p = str;
            int indexOf = str.indexOf(":");
            if (indexOf == -1) {
                indexOf = this.p.length();
            }
            this.p = this.p.substring(0, indexOf);
        }
        d(this.ia);
    }

    public Map<String, Object> d() {
        return this.kk;
    }

    public void d(Map<String, Object> map) {
        s d2;
        s d3;
        p pVar = this.iw;
        if (pVar != null && (d3 = pVar.d()) != null) {
            d3.d(this, this.f2010d);
        }
        p pVar2 = this.mn;
        if (pVar2 == null || (d2 = pVar2.d()) == null) {
            return;
        }
        d2.d(this, map);
    }

    public Map<String, Object> dq() {
        return this.f2010d;
    }

    public void dq(com.bytedance.sdk.component.no.p.d dVar) {
        this.no = dVar;
    }

    public void dq(p pVar) {
        if (pVar instanceof d) {
            this.iw = pVar;
        } else {
            this.mn = pVar;
        }
    }

    public void dq(String str) {
        this.s = str;
    }

    public void dq(Map<String, Object> map) {
        s d2;
        s d3;
        p pVar = this.iw;
        if (pVar != null && (d3 = pVar.d()) != null) {
            d3.dq(this, map);
        }
        p pVar2 = this.mn;
        if (pVar2 == null || (d2 = pVar2.d()) == null) {
            return;
        }
        d2.dq(this, map);
    }

    public void iw() {
        ia();
        com.bytedance.sdk.component.no.p.d dVar = this.no;
        if (dVar != null) {
            dVar.dq();
        } else {
            com.bytedance.sdk.component.no.mn.dq.dq().dq(this.p, this, new com.bytedance.sdk.component.no.p.dq() { // from class: com.bytedance.sdk.component.no.dq.dq.1
            });
        }
    }

    public com.bytedance.sdk.component.no.ox.dq mn() {
        return this.ox;
    }

    public JSONObject ox() {
        return this.dq;
    }

    public String p() {
        return this.s;
    }

    public p s() {
        return this.iw;
    }
}
