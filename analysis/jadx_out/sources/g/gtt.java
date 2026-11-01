package g;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final /* synthetic */ class gtt implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f18737a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18738b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18739c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f18740d;

    public /* synthetic */ gtt(fyn fynVar, ku kuVar, bco bcoVar, gfj gfjVar) {
        this.f18739c = 2;
        this.f18740d = fynVar;
        this.f18737a = kuVar;
        this.f18738b = gfjVar;
    }

    public /* synthetic */ gtt(Object obj, Object obj2, Object obj3, int i) {
        this.f18739c = i;
        this.f18740d = obj;
        this.f18737a = obj2;
        this.f18738b = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ gtt(AtomicBoolean atomicBoolean, eje ejeVar, cvw cvwVar) {
        this.f18739c = 8;
        this.f18740d = atomicBoolean;
        this.f18737a = ejeVar;
        this.f18738b = (axr) cvwVar;
    }

    /* JADX WARN: Type inference failed for: r2v23, types: [g.axr, g.cvw] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.f18739c) {
            case 0:
                ffr ffrVar = (ffr) this.f18740d;
                bmm bmmVar = (bmm) this.f18737a;
                anx anxVar = (anx) this.f18738b;
                guk gukVar = (guk) ffrVar.f16719c;
                if (gukVar.f18776f.a()) {
                    bmmVar.w(gukVar, new IOException("Canceled"));
                    return;
                } else {
                    bmmVar.ad(gukVar, anxVar);
                    return;
                }
            case 1:
                ((bmm) this.f18737a).w((guk) ((ffr) this.f18740d).f16719c, (Throwable) this.f18738b);
                return;
            case 2:
                fyn fynVar = (fyn) this.f18740d;
                ku kuVar = (ku) this.f18737a;
                String str = kuVar.f19566a;
                gfj gfjVar = (gfj) this.f18738b;
                fynVar.getClass();
                Logger logger = fyn.f17643a;
                try {
                    dte d2 = fynVar.f17648f.d(str);
                    if (d2 == null) {
                        String str2 = "Transport backend '" + str + "' is not registered";
                        logger.warning(str2);
                        new IllegalArgumentException(str2);
                    } else {
                        ((cga) fynVar.f17645c).n(new gkn(fynVar, kuVar, ((cov) d2).i(gfjVar), 0));
                    }
                    return;
                } catch (Exception e2) {
                    logger.warning("Error scheduling event " + e2.getMessage());
                    return;
                }
            case 3:
                cqc cqcVar = (cqc) this.f18740d;
                List<cno> list = (List) this.f18737a;
                File file = (File) this.f18738b;
                for (cno cnoVar : list) {
                    cqcVar.f13323d.set("SOURCE:" + cnoVar.f13186e.ak.m());
                    try {
                        cci cciVar = cnoVar.f13186e;
                        wm.c(file, cciVar, cciVar.bb());
                        if (cciVar.ad != gwz.NOT_LOADED) {
                            cciVar.w(csv.CLASS_UNLOADED);
                            if (!cciVar.bk()) {
                                etc etcVar = cciVar.f12631ab.i.f20118ab;
                                cciVar.bn();
                                etcVar.getClass();
                            }
                            cciVar.ax();
                        }
                        cciVar.ax();
                    } catch (Exception e3) {
                        cqc.f13320a.b(cnoVar, "Error saving class: {}", e3);
                    }
                }
                return;
            case 4:
                cqc cqcVar2 = (cqc) this.f18740d;
                awr awrVar = (awr) this.f18737a;
                File file2 = (File) this.f18738b;
                cqcVar2.f13323d.set("RES:" + awrVar.f10992d);
                new oj(cqcVar2, file2, awrVar).run();
                return;
            case 5:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f18740d;
                eje ejeVar = (eje) this.f18737a;
                cvw cvwVar = (cvw) this.f18738b;
                if (atomicBoolean.get()) {
                    return;
                }
                try {
                    ejeVar.e(cvwVar.invoke());
                    return;
                } catch (Throwable th) {
                    ejeVar.f(th);
                    return;
                }
            case 6:
                egu eguVar = (egu) this.f18740d;
                gbb gbbVar = (gbb) this.f18737a;
                dly dlyVar = (dly) this.f18738b;
                try {
                    z = ((Boolean) gbbVar.f17842b.get()).booleanValue();
                } catch (InterruptedException | ExecutionException unused) {
                    z = true;
                }
                synchronized (eguVar.f15515c) {
                    try {
                        gxm j = awt.j(dlyVar.f14408g);
                        String str3 = j.f18956a;
                        if (eguVar.o(str3) == dlyVar) {
                            eguVar.s(str3);
                        }
                        cyl.f().getClass();
                        Iterator it = eguVar.j.iterator();
                        while (it.hasNext()) {
                            ((eiv) it.next()).h(j, z);
                        }
                    } finally {
                    }
                }
                return;
            case 7:
                flz.f((flz) this.f18740d, (aci) this.f18737a, (dsp) this.f18738b);
                return;
            default:
                AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.f18740d;
                eje ejeVar2 = (eje) this.f18737a;
                ?? r2 = (axr) this.f18738b;
                if (atomicBoolean2.get()) {
                    return;
                }
                try {
                    ejeVar2.e(r2.invoke());
                    return;
                } catch (Throwable th2) {
                    ejeVar2.f(th2);
                    return;
                }
        }
    }
}
