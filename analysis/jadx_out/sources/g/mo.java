package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Optional;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final class mo extends pj {

    /* renamed from: a, reason: collision with root package name */
    public dwg f19660a;

    /* renamed from: b, reason: collision with root package name */
    public cag f19661b;

    static {
        dsr.k(mo.class);
    }

    public static void c(ffr ffrVar, fog fogVar) {
        if (fogVar == null) {
            return;
        }
        if ((fogVar instanceof dhc) || fogVar.getType() != cwx.ad) {
            ((LinkedHashSet) ffrVar.f16719c).add(fogVar);
        }
    }

    public static void d(hed hedVar) {
        cwx cwxVar;
        for (vm vmVar : hedVar.at) {
            gks gksVar = vmVar.f20177c;
            if (!gksVar.l.g(csv.IMMUTABLE_TYPE)) {
                Iterator it = vmVar.f20178d.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        cwxVar = null;
                        break;
                    }
                    gks gksVar2 = (gks) it.next();
                    if (gksVar2.l.g(csv.IMMUTABLE_TYPE)) {
                        cwxVar = gksVar2.h;
                        break;
                    }
                }
            } else {
                cwxVar = vmVar.f20177c.h;
            }
            if (cwxVar != null) {
                vmVar.f20177c.w(csv.IMMUTABLE_TYPE);
                if (!vmVar.f20177c.h.equals(cwxVar)) {
                    vmVar.f20177c.h = cwxVar;
                }
            }
        }
    }

    public final void e(hed hedVar, vm vmVar) {
        Optional max = Collection.b.stream((LinkedHashSet) vmVar.h.f16719c).map(new fov(27)).filter(new bev(28)).max(this.f19661b.f12545e.f13637c);
        if (max.isEmpty()) {
            return;
        }
        cwx cwxVar = (cwx) max.get();
        cag cagVar = this.f19661b;
        cagVar.getClass();
        cagVar.p(hedVar, vmVar, cwxVar, zf.f20390c);
    }

    @Override // g.pj
    public final String f() {
        return "TypeInferenceVisitor";
    }

    public final void g(hed hedVar) {
        List list = hedVar.at;
        Iterable.b.forEach(list, new agx(24, this));
        Iterable.b.forEach(list, new abs(this));
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        this.f19660a = dwgVar;
        this.f19661b = dwgVar.u;
    }

    public final void i(final hed hedVar) {
        List list = hedVar.at;
        final int i = 0;
        Iterable.b.forEach(list, new Consumer(this) { // from class: g.aty

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ mo f10844b;

            {
                this.f10844b = this;
            }

            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                switch (i) {
                    case 0:
                        mo moVar = this.f10844b;
                        hed hedVar2 = hedVar;
                        vm vmVar = (vm) obj;
                        try {
                            cwx m = vmVar.m();
                            if (m != null) {
                                cag cagVar = moVar.f19661b;
                                cagVar.getClass();
                                cagVar.p(hedVar2, vmVar, m, zf.f20388a);
                                return;
                            }
                            return;
                        } catch (blf e2) {
                            throw e2;
                        } catch (Exception e3) {
                            hedVar2.bt("Failed to set immutable type for var: " + vmVar, e3);
                            return;
                        }
                    default:
                        mo moVar2 = this.f10844b;
                        hed hedVar3 = hedVar;
                        vm vmVar2 = (vm) obj;
                        try {
                            moVar2.e(hedVar3, vmVar2);
                            return;
                        } catch (blf e4) {
                            throw e4;
                        } catch (Exception e5) {
                            hedVar3.bt("Failed to calculate best type for var: " + vmVar2, e5);
                            return;
                        }
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                int i2 = i;
                return j$.util.function.j.$default$andThen(this, consumer);
            }
        });
        final int i2 = 1;
        Iterable.b.forEach(list, new Consumer(this) { // from class: g.aty

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ mo f10844b;

            {
                this.f10844b = this;
            }

            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                switch (i2) {
                    case 0:
                        mo moVar = this.f10844b;
                        hed hedVar2 = hedVar;
                        vm vmVar = (vm) obj;
                        try {
                            cwx m = vmVar.m();
                            if (m != null) {
                                cag cagVar = moVar.f19661b;
                                cagVar.getClass();
                                cagVar.p(hedVar2, vmVar, m, zf.f20388a);
                                return;
                            }
                            return;
                        } catch (blf e2) {
                            throw e2;
                        } catch (Exception e3) {
                            hedVar2.bt("Failed to set immutable type for var: " + vmVar, e3);
                            return;
                        }
                    default:
                        mo moVar2 = this.f10844b;
                        hed hedVar3 = hedVar;
                        vm vmVar2 = (vm) obj;
                        try {
                            moVar2.e(hedVar3, vmVar2);
                            return;
                        } catch (blf e4) {
                            throw e4;
                        } catch (Exception e5) {
                            hedVar3.bt("Failed to calculate best type for var: " + vmVar2, e5);
                            return;
                        }
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i2;
                return j$.util.function.j.$default$andThen(this, consumer);
            }
        });
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        if (hedVar.ar) {
            return;
        }
        try {
            d(hedVar);
            g(hedVar);
            i(hedVar);
        } catch (BootstrapMethodError e2) {
            e = e2;
            dcj.d(hedVar, "Type inference failed with stack overflow", new blf(e.getMessage()));
        } catch (Exception e3) {
            dcj.d(hedVar, "Type inference failed", e3);
        } catch (StackOverflowError e4) {
            e = e4;
            dcj.d(hedVar, "Type inference failed with stack overflow", new blf(e.getMessage()));
        }
    }
}
