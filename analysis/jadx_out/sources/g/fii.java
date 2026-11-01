package g;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class fii extends ebs {
    public final void a(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        fqk fqkVar = (fqk) obj;
        int i = 0;
        if (fqkVar instanceof h) {
            h hVar = (h) fqkVar;
            int size = hVar.f19092e.size();
            while (i < size) {
                a((i < 0 || i >= hVar.f19092e.size()) ? null : (fqk) hVar.f19092e.get(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (ebs.r(fqkVar.as)) {
            ArrayList arrayList3 = fqkVar.bb;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size2 = arrayList2 == null ? 0 : arrayList2.size();
                while (i < size2) {
                    fqkVar.j((View) arrayList2.get(i));
                    i++;
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    fqkVar.m((View) arrayList.get(size3));
                }
            }
        }
    }

    @Override // g.ebs
    public final void b(Object obj, View view, ArrayList arrayList) {
        ((fqk) obj).bi(new dps(view, arrayList));
    }

    @Override // g.ebs
    public final void c(Object obj, ac acVar, gfh gfhVar) {
        fqk fqkVar = (fqk) obj;
        acVar.d(new ftr(fqkVar, 0, gfhVar));
        fqkVar.bi(new abt(gfhVar));
    }

    @Override // g.ebs
    public final void d(Object obj, Rect rect) {
        ((fqk) obj).h(new few());
    }

    @Override // g.ebs
    public final void e(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        ((fqk) obj).bi(new ekv(this, obj2, arrayList, obj3, arrayList2));
    }

    @Override // g.ebs
    public final boolean f(Object obj) {
        return obj instanceof fqk;
    }

    @Override // g.ebs
    public final void g(View view, Object obj) {
        ((fqk) obj).j(view);
    }

    @Override // g.ebs
    public final Object h(Object obj) {
        if (obj != null) {
            return ((fqk) obj).clone();
        }
        return null;
    }

    @Override // g.ebs
    public final void i(Object obj, View view, ArrayList arrayList) {
        h hVar = (h) obj;
        ArrayList arrayList2 = hVar.bb;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ebs.s((View) arrayList.get(i), arrayList2);
        }
        arrayList2.add(view);
        arrayList.add(view);
        l(hVar, arrayList);
    }

    @Override // g.ebs
    public final void j(View view, Object obj) {
        if (view != null) {
            ebs.t(new Rect(), view);
            ((fqk) obj).h(new few());
        }
    }

    @Override // g.ebs
    public final Object k(Object obj, Object obj2, Object obj3) {
        fqk fqkVar = (fqk) obj;
        fqk fqkVar2 = (fqk) obj2;
        fqk fqkVar3 = (fqk) obj3;
        if (fqkVar != null && fqkVar2 != null) {
            h hVar = new h();
            hVar._k(fqkVar);
            hVar._k(fqkVar2);
            hVar.f19089b = false;
            fqkVar = hVar;
        } else if (fqkVar == null) {
            fqkVar = fqkVar2 != null ? fqkVar2 : null;
        }
        if (fqkVar3 == null) {
            return fqkVar;
        }
        h hVar2 = new h();
        if (fqkVar != null) {
            hVar2._k(fqkVar);
        }
        hVar2._k(fqkVar3);
        return hVar2;
    }

    @Override // g.ebs
    public final void l(Object obj, ArrayList arrayList) {
        fqk fqkVar = (fqk) obj;
        if (fqkVar == null) {
            return;
        }
        int i = 0;
        if (fqkVar instanceof h) {
            h hVar = (h) fqkVar;
            int size = hVar.f19092e.size();
            while (i < size) {
                l((i < 0 || i >= hVar.f19092e.size()) ? null : (fqk) hVar.f19092e.get(i), arrayList);
                i++;
            }
            return;
        }
        if (ebs.r(fqkVar.as) && ebs.r(fqkVar.bb)) {
            int size2 = arrayList.size();
            while (i < size2) {
                fqkVar.j((View) arrayList.get(i));
                i++;
            }
        }
    }

    @Override // g.ebs
    public final Object m(Object obj, Object obj2) {
        h hVar = new h();
        if (obj != null) {
            hVar._k((fqk) obj);
        }
        hVar._k((fqk) obj2);
        return hVar;
    }

    @Override // g.ebs
    public final void n(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        h hVar = (h) obj;
        if (hVar != null) {
            ArrayList arrayList3 = hVar.bb;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            a(hVar, arrayList, arrayList2);
        }
    }

    @Override // g.ebs
    public final void p(ViewGroup viewGroup, Object obj) {
        atq.d(viewGroup, (fqk) obj);
    }

    @Override // g.ebs
    public final Object q(Object obj) {
        if (obj == null) {
            return null;
        }
        h hVar = new h();
        hVar._k((fqk) obj);
        return hVar;
    }
}
