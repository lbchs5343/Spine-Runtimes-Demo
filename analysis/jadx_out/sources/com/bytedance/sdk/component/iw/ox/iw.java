package com.bytedance.sdk.component.iw.ox;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.component.iw.cd;
import com.bytedance.sdk.component.iw.fw;
import com.bytedance.sdk.component.iw.gh;
import com.bytedance.sdk.component.iw.i;
import com.bytedance.sdk.component.iw.ig;
import com.bytedance.sdk.component.iw.mp;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private final mp f1963d;
    private ExecutorService ia;
    private com.bytedance.sdk.component.iw.p iw;
    private fw kk;
    private ig mn;
    private Map<String, List<ox>> dq = new ConcurrentHashMap();
    private Map<String, cd> ox = new HashMap();
    private Map<String, gh> p = new HashMap();
    private Map<String, com.bytedance.sdk.component.iw.ox> s = new HashMap();

    public iw(Context context, mp mpVar) {
        this.f1963d = (mp) ia.dq(mpVar);
        com.bytedance.sdk.component.iw.ox.dq.dq.dq(context, mpVar.kk());
    }

    private fw ig() {
        fw ia = this.f1963d.ia();
        return ia == null ? new mn() : ia;
    }

    private com.bytedance.sdk.component.iw.ox iw(com.bytedance.sdk.component.iw.d dVar) {
        com.bytedance.sdk.component.iw.ox mn = this.f1963d.mn();
        return mn != null ? mn : new com.bytedance.sdk.component.iw.ox.dq.dq.d(dVar.s(), dVar.dq(), iw());
    }

    private com.bytedance.sdk.component.iw.p kk() {
        com.bytedance.sdk.component.iw.p p = this.f1963d.p();
        return p == null ? com.bytedance.sdk.component.iw.d.d.dq() : p;
    }

    private ExecutorService no() {
        ExecutorService d2 = this.f1963d.d();
        return d2 != null ? d2 : com.bytedance.sdk.component.iw.dq.ox.dq();
    }

    private ig o() {
        ig dq = this.f1963d.dq();
        return dq != null ? dq : com.bytedance.sdk.component.iw.dq.d.dq();
    }

    private cd p(com.bytedance.sdk.component.iw.d dVar) {
        cd s = this.f1963d.s();
        return s != null ? com.bytedance.sdk.component.iw.ox.dq.d.dq.dq(s) : com.bytedance.sdk.component.iw.ox.dq.d.dq.dq(dVar.d());
    }

    private gh s(com.bytedance.sdk.component.iw.d dVar) {
        gh iw = this.f1963d.iw();
        return iw != null ? iw : com.bytedance.sdk.component.iw.ox.dq.d.s.dq(dVar.d());
    }

    public gh d(com.bytedance.sdk.component.iw.d dVar) {
        if (dVar == null) {
            dVar = com.bytedance.sdk.component.iw.ox.dq.dq.mn();
        }
        String file = dVar.s().toString();
        gh ghVar = this.p.get(file);
        if (ghVar != null) {
            return ghVar;
        }
        gh s = s(dVar);
        this.p.put(file, s);
        return s;
    }

    public Collection<gh> d() {
        return this.p.values();
    }

    public cd dq(com.bytedance.sdk.component.iw.d dVar) {
        if (dVar == null) {
            dVar = com.bytedance.sdk.component.iw.ox.dq.dq.mn();
        }
        String file = dVar.s().toString();
        cd cdVar = this.ox.get(file);
        if (cdVar != null) {
            return cdVar;
        }
        cd p = p(dVar);
        this.ox.put(file, p);
        return p;
    }

    public com.bytedance.sdk.component.iw.ox.d.dq dq(ox oxVar) {
        ImageView.ScaleType s = oxVar.s();
        if (s == null) {
            s = com.bytedance.sdk.component.iw.ox.d.dq.dq;
        }
        ImageView.ScaleType scaleType = s;
        Bitmap.Config ig = oxVar.ig();
        if (ig == null) {
            ig = com.bytedance.sdk.component.iw.ox.d.dq.f1948d;
        }
        return new com.bytedance.sdk.component.iw.ox.d.dq(oxVar.ox(), oxVar.p(), scaleType, ig, oxVar.kk(), oxVar.o());
    }

    public com.bytedance.sdk.component.iw.ox dq(String str) {
        return ox(com.bytedance.sdk.component.iw.ox.dq.dq.dq(new File(str)));
    }

    public Collection<cd> dq() {
        return this.ox.values();
    }

    public fw ia() {
        if (this.kk == null) {
            this.kk = ig();
        }
        return this.kk;
    }

    public ExecutorService iw() {
        ExecutorService dq;
        i ox = this.f1963d.ox();
        if (ox != null && (dq = ox.dq()) != null) {
            return dq;
        }
        if (this.ia == null) {
            this.ia = no();
        }
        return this.ia;
    }

    public Map<String, List<ox>> mn() {
        return this.dq;
    }

    public com.bytedance.sdk.component.iw.ox ox(com.bytedance.sdk.component.iw.d dVar) {
        if (dVar == null) {
            dVar = com.bytedance.sdk.component.iw.ox.dq.dq.mn();
        }
        String file = dVar.s().toString();
        com.bytedance.sdk.component.iw.ox oxVar = this.s.get(file);
        if (oxVar != null) {
            return oxVar;
        }
        com.bytedance.sdk.component.iw.ox iw = iw(dVar);
        this.s.put(file, iw);
        return iw;
    }

    public Collection<com.bytedance.sdk.component.iw.ox> ox() {
        return this.s.values();
    }

    public com.bytedance.sdk.component.iw.p p() {
        if (this.iw == null) {
            this.iw = kk();
        }
        return this.iw;
    }

    public ig s() {
        if (this.mn == null) {
            this.mn = o();
        }
        return this.mn;
    }
}
