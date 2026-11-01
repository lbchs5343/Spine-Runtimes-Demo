package androidx.lifecycle;

import android.os.Looper;
import g.ajs;
import g.bbq;
import g.bki;
import g.byd;
import g.cfx;
import g.dav;
import g.dgv;
import g.epu;
import g.fqv;
import g.frv;
import g.gev;
import g.iz;
import g.jn;
import g.tn;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f238a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public boolean f239b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f240c;

    /* renamed from: d, reason: collision with root package name */
    public volatile Object f241d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f242e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f243f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f244g;
    public final cfx h;
    public final byd i;
    public int j;
    public int k;

    public a() {
        this.f242e = new Object();
        this.h = new cfx();
        this.j = 0;
        Object obj = f238a;
        this.f243f = obj;
        this.i = new byd(19, this);
        this.f241d = obj;
        this.k = -1;
    }

    public a(int i) {
        bki bkiVar = gev.f18005b;
        this.f242e = new Object();
        this.h = new cfx();
        this.j = 0;
        this.f243f = f238a;
        this.i = new byd(19, this);
        this.f241d = bkiVar;
        this.k = 0;
    }

    public static void l(String str) {
        dav.d().f13881c.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(tn.ad("Cannot invoke ", str, " on a background thread"));
        }
    }

    public void m(jn jnVar) {
        l("removeObserver");
        bbq bbqVar = (bbq) this.h.c(jnVar);
        if (bbqVar == null) {
            return;
        }
        bbqVar.f();
        bbqVar.k(false);
    }

    public final void n(iz izVar, jn jnVar) {
        Object obj;
        l("observe");
        if (((ajs) izVar.getLifecycle()).f10342g == fqv.DESTROYED) {
            return;
        }
        LiveData$LifecycleBoundObserver liveData$LifecycleBoundObserver = new LiveData$LifecycleBoundObserver(this, izVar, jnVar);
        cfx cfxVar = this.h;
        frv b2 = cfxVar.b(jnVar);
        if (b2 != null) {
            obj = b2.f17315d;
        } else {
            frv frvVar = new frv(jnVar, liveData$LifecycleBoundObserver);
            cfxVar.f12803e++;
            frv frvVar2 = cfxVar.f12805g;
            if (frvVar2 == null) {
                cfxVar.f12804f = frvVar;
                cfxVar.f12805g = frvVar;
            } else {
                frvVar2.f17312a = frvVar;
                frvVar.f17313b = frvVar2;
                cfxVar.f12805g = frvVar;
            }
            obj = null;
        }
        bbq bbqVar = (bbq) obj;
        if (bbqVar != null && !bbqVar.d(izVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bbqVar != null) {
            return;
        }
        izVar.getLifecycle().l(liveData$LifecycleBoundObserver);
    }

    public final void o(jn jnVar) {
        Object obj;
        l("observeForever");
        epu epuVar = new epu(this, jnVar);
        cfx cfxVar = this.h;
        frv b2 = cfxVar.b(jnVar);
        if (b2 != null) {
            obj = b2.f17315d;
        } else {
            frv frvVar = new frv(jnVar, epuVar);
            cfxVar.f12803e++;
            frv frvVar2 = cfxVar.f12805g;
            if (frvVar2 == null) {
                cfxVar.f12804f = frvVar;
                cfxVar.f12805g = frvVar;
            } else {
                frvVar2.f17312a = frvVar;
                frvVar.f17313b = frvVar2;
                cfxVar.f12805g = frvVar;
            }
            obj = null;
        }
        bbq bbqVar = (bbq) obj;
        if (bbqVar instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bbqVar != null) {
            return;
        }
        epuVar.k(true);
    }

    public void p() {
    }

    public abstract void q(Object obj);

    public final void r(bbq bbqVar) {
        if (bbqVar.j) {
            if (!bbqVar.e()) {
                bbqVar.k(false);
                return;
            }
            int i = bbqVar.f11239g;
            int i2 = this.k;
            if (i >= i2) {
                return;
            }
            bbqVar.f11239g = i2;
            bbqVar.i._bl(this.f241d);
        }
    }

    public final void s(bbq bbqVar) {
        if (this.f239b) {
            this.f244g = true;
            return;
        }
        this.f239b = true;
        do {
            this.f244g = false;
            if (bbqVar != null) {
                r(bbqVar);
                bbqVar = null;
            } else {
                cfx cfxVar = this.h;
                cfxVar.getClass();
                dgv dgvVar = new dgv(cfxVar);
                cfxVar.f12802d.put(dgvVar, Boolean.FALSE);
                while (dgvVar.hasNext()) {
                    r((bbq) ((Map.Entry) dgvVar.next()).getValue());
                    if (this.f244g) {
                        break;
                    }
                }
            }
        } while (this.f244g);
        this.f239b = false;
    }

    public void t() {
    }
}
