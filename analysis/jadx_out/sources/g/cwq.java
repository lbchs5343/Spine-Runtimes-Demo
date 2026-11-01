package g;

import android.content.IntentFilter;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class cwq extends haz {

    /* renamed from: a, reason: collision with root package name */
    public static cwq f13641a;

    /* renamed from: b, reason: collision with root package name */
    public static cwz f13642b;

    /* renamed from: c, reason: collision with root package name */
    public String f13643c;

    /* renamed from: d, reason: collision with root package name */
    public sr f13644d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13645e;

    public static cwq f(cms cmsVar) {
        if (f13641a == null) {
            synchronized (cwq.class) {
                try {
                    if (f13641a == null) {
                        cwq cwqVar = new cwq(cmsVar);
                        cwqVar.f13645e = true;
                        cwqVar.o = new LinkedHashMap();
                        cwqVar.p = false;
                        f13641a = cwqVar;
                        f13642b = cwz.b(cmsVar);
                    }
                } finally {
                }
            }
        }
        return f13641a;
    }

    @Override // g.haz
    public final void g(gqc gqcVar, int i, boolean z) {
        if (ern.h(this.v, this.f13643c)) {
            this.w = false;
            gqcVar.onSuccess(null);
        } else {
            this.w = false;
            gqcVar.a(null);
        }
    }

    @Override // g.haz
    public final void h(String str, int i, ArrayList arrayList) {
        if (this.f13645e && i == 1) {
            j(str);
        }
        if (i == 2) {
            this.o.remove(str);
        }
        synchronized (haz.class) {
            try {
                auj c2 = f13642b.c(str, true);
                Iterator it = this.s.iterator();
                while (it.hasNext()) {
                    dgx dgxVar = (dgx) it.next();
                    bsx bsxVar = dgxVar.f14154a;
                    if (bsxVar != null && bsxVar.i(c2)) {
                        return;
                    } else {
                        z(dgxVar, arrayList);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.haz
    public final void i() {
        super.i();
        if (this.r.get() == 1) {
            this.f13644d = new sr(7, this);
            fzn.l(this.v).v(this.f13644d, new IntentFilter("window_state_changed"));
        }
    }

    public final void j(String str) {
        auj c2;
        if (TextUtils.isEmpty(str) || (c2 = f13642b.c(str, true)) == null) {
            return;
        }
        if (this.o.containsKey(str)) {
            this.o.remove(str);
        }
        this.o.put(str, c2);
    }
}
