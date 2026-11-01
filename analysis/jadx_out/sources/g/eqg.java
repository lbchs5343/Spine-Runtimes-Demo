package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class eqg {

    /* renamed from: a, reason: collision with root package name */
    public final cis f15988a;

    /* renamed from: b, reason: collision with root package name */
    public final duw f15989b;

    /* renamed from: c, reason: collision with root package name */
    public dpa f15990c;

    /* renamed from: d, reason: collision with root package name */
    public final dzh f15991d;

    public eqg() {
        duw duwVar = new duw(10);
        this.f15989b = duwVar;
        this.f15990c = ((dpa) duwVar.f14864d).u();
        this.f15991d = new dzh(17);
        cis cisVar = new cis();
        cisVar.f12947a = new TreeMap();
        cisVar.f12948b = new TreeMap();
        this.f15988a = cisVar;
        final int i = 0;
        Callable callable = new Callable(this) { // from class: g.ece

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ eqg f15296b;

            {
                this.f15296b = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                switch (i) {
                    case 0:
                        return new auf(this.f15296b.f15988a);
                    default:
                        return new auf(this.f15296b.f15991d);
                }
            }
        };
        gyf gyfVar = (gyf) duwVar.f14866f;
        ((HashMap) gyfVar.f18999a).put("internal.registerCallback", callable);
        final int i2 = 1;
        ((HashMap) gyfVar.f18999a).put("internal.eventLogger", new Callable(this) { // from class: g.ece

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ eqg f15296b;

            {
                this.f15296b = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                switch (i2) {
                    case 0:
                        return new auf(this.f15296b.f15988a);
                    default:
                        return new auf(this.f15296b.f15991d);
                }
            }
        });
    }

    public final void e(kh khVar) {
        fdk fdkVar;
        duw duwVar = this.f15989b;
        try {
            this.f15990c = ((dpa) duwVar.f14864d).u();
            if (duwVar.l(this.f15990c, (aqu[]) khVar.c().toArray(new aqu[0])) instanceof enl) {
                throw new IllegalStateException("Program loading failed");
            }
            for (evv evvVar : khVar.b().c()) {
                cwe c2 = evvVar.c();
                String b2 = evvVar.b();
                Iterator it = c2.iterator();
                while (it.hasNext()) {
                    gey l = duwVar.l(this.f15990c, (aqu) it.next());
                    if (!(l instanceof byt)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    dpa dpaVar = this.f15990c;
                    if (dpaVar.l(b2)) {
                        gey k = dpaVar.k(b2);
                        if (!(k instanceof fdk)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(b2)));
                        }
                        fdkVar = (fdk) k;
                    } else {
                        fdkVar = null;
                    }
                    if (fdkVar == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(b2)));
                    }
                    fdkVar.e(this.f15990c, Collections.singletonList(l));
                }
            }
        } catch (Throwable th) {
            throw new egg(th);
        }
    }

    public final boolean f(guq guqVar) {
        dzh dzhVar = this.f15991d;
        try {
            dzhVar.i = guqVar;
            dzhVar.f15121f = guqVar.clone();
            ((ArrayList) dzhVar.f15122g).clear();
            ((dpa) this.f15989b.f14865e).q("runtime.counter", new hbz(Double.valueOf(0.0d)));
            this.f15988a.c(this.f15990c.u(), dzhVar);
            if (((guq) dzhVar.f15121f).equals((guq) dzhVar.i)) {
                return !((ArrayList) dzhVar.f15122g).isEmpty();
            }
            return true;
        } catch (Throwable th) {
            throw new egg(th);
        }
    }
}
