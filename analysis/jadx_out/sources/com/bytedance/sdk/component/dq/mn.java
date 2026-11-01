package com.bytedance.sdk.component.dq;

import com.bytedance.component.sdk.annotation.MainThread;
import com.bytedance.sdk.component.dq.gh;
import com.bytedance.sdk.component.dq.i;
import com.bytedance.sdk.component.dq.le;
import com.bytedance.sdk.component.dq.p;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

/* loaded from: classes.dex */
class mn implements le.dq {

    /* renamed from: d, reason: collision with root package name */
    private final r f1874d;
    private final ia dq;
    private final boolean ia;
    private final boolean kk;
    private final mp mn;
    private final com.bytedance.sdk.component.dq.dq o;
    private final Map<String, d> ox = new HashMap();
    private final Map<String, p.d> p = new HashMap();
    private final List<f> s = new ArrayList();
    private final Set<p> iw = new HashSet();

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        String f1877d;
        boolean dq;

        private dq(boolean z, String str) {
            this.dq = z;
            this.f1877d = str;
        }
    }

    public mn(o oVar, com.bytedance.sdk.component.dq.dq dqVar, i iVar) {
        this.o = dqVar;
        this.dq = oVar.p;
        r rVar = new r(iVar, oVar.ig, oVar.mp);
        this.f1874d = rVar;
        rVar.dq(this);
        rVar.dq(oVar.f1879f);
        this.mn = oVar.kk;
        this.ia = oVar.ia;
        this.kk = oVar.jy;
    }

    private k d(String str, d dVar) {
        return this.kk ? k.PRIVATE : this.f1874d.dq(this.ia, str, dVar);
    }

    @MainThread
    private dq dq(final f fVar, ox oxVar, k kVar) throws Exception {
        new gh(fVar.p, kVar, new gh.dq() { // from class: com.bytedance.sdk.component.dq.mn.2
        });
        return new dq(false, wp.dq());
    }

    @MainThread
    private dq dq(final f fVar, final p pVar, iw iwVar) throws Exception {
        this.iw.add(pVar);
        pVar.dq(dq(fVar.s, pVar), iwVar, new p.dq() { // from class: com.bytedance.sdk.component.dq.mn.1
            @Override // com.bytedance.sdk.component.dq.p.dq
            public void dq(Object obj) {
                if (mn.this.o == null) {
                    return;
                }
                mn.this.o.d(wp.dq(mn.this.dq.dq((ia) obj)), fVar);
                mn.this.iw.remove(pVar);
            }

            @Override // com.bytedance.sdk.component.dq.p.dq
            public void dq(Throwable th) {
                if (mn.this.o == null) {
                    return;
                }
                mn.this.o.d(wp.dq(th), fVar);
                mn.this.iw.remove(pVar);
            }
        });
        return new dq(false, wp.dq());
    }

    @MainThread
    private dq dq(f fVar, s sVar, iw iwVar) throws Exception {
        return new dq(true, wp.dq(this.dq.dq((ia) sVar.dq(dq(fVar.s, (d) sVar), iwVar))));
    }

    private Object dq(String str, d dVar) throws JSONException {
        return this.dq.dq(str, dq(dVar)[0]);
    }

    private static Type[] dq(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }

    @MainThread
    public dq dq(f fVar, iw iwVar) throws Exception {
        d dVar = this.ox.get(fVar.p);
        if (dVar != null) {
            try {
                k d2 = d(iwVar.f1871d, dVar);
                iwVar.p = d2;
                if (d2 == null) {
                    kk.dq("Permission denied, call: ".concat(String.valueOf(fVar)));
                    throw new cd(-1);
                }
                if (dVar instanceof s) {
                    kk.dq("Processing stateless call: ".concat(String.valueOf(fVar)));
                    return dq(fVar, (s) dVar, iwVar);
                }
                if (dVar instanceof ox) {
                    kk.dq("Processing raw call: ".concat(String.valueOf(fVar)));
                    return dq(fVar, (ox) dVar, d2);
                }
            } catch (i.dq e2) {
                kk.dq("No remote permission config fetched, call pending: ".concat(String.valueOf(fVar)), e2);
                this.s.add(fVar);
                return new dq(false, wp.dq());
            }
        }
        p.d dVar2 = this.p.get(fVar.p);
        if (dVar2 == null) {
            kk.d("Received call: " + fVar + ", but not registered.");
            return null;
        }
        p dq2 = dVar2.dq();
        dq2.dq(fVar.p);
        k d3 = d(iwVar.f1871d, dq2);
        iwVar.p = d3;
        if (d3 != null) {
            kk.dq("Processing stateful call: ".concat(String.valueOf(fVar)));
            return dq(fVar, dq2, iwVar);
        }
        kk.dq("Permission denied, call: ".concat(String.valueOf(fVar)));
        dq2.s();
        throw new cd(-1);
    }

    public void dq() {
        Iterator<p> it = this.iw.iterator();
        while (it.hasNext()) {
            it.next().iw();
        }
        this.iw.clear();
        this.ox.clear();
        this.p.clear();
        this.f1874d.d(this);
    }

    public void dq(String str, p.d dVar) {
        this.p.put(str, dVar);
        kk.dq("JsBridge stateful method registered: ".concat(String.valueOf(str)));
    }

    public void dq(String str, s<?, ?> sVar) {
        sVar.dq(str);
        this.ox.put(str, sVar);
        kk.dq("JsBridge stateless method registered: ".concat(String.valueOf(str)));
    }
}
