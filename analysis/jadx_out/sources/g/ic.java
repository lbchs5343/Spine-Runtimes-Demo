package g;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ic {

    /* renamed from: a, reason: collision with root package name */
    public static int f19412a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f19413b;

    /* renamed from: c, reason: collision with root package name */
    public int f19414c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f19415d;

    /* renamed from: e, reason: collision with root package name */
    public int f19416e;

    /* renamed from: f, reason: collision with root package name */
    public int f19417f;

    public final void g(ArrayList arrayList) {
        int size = this.f19415d.size();
        if (this.f19414c != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                ic icVar = (ic) arrayList.get(i);
                if (this.f19414c == icVar.f19416e) {
                    i(this.f19417f, icVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int h(bwo bwoVar, int i) {
        int r;
        int r2;
        ArrayList arrayList = this.f19415d;
        if (arrayList.size() == 0) {
            return 0;
        }
        aep aepVar = (aep) ((brh) arrayList.get(0)).bj;
        bwoVar.ah();
        aepVar.g(bwoVar, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((brh) arrayList.get(i2)).g(bwoVar, false);
        }
        if (i == 0 && aepVar.u > 0) {
            dzm.ag(aepVar, bwoVar, arrayList, 0);
        }
        if (i == 1 && aepVar.n > 0) {
            dzm.ag(aepVar, bwoVar, arrayList, 1);
        }
        try {
            bwoVar.ab();
        } catch (Exception e2) {
            System.err.println(e2.toString() + "\n" + Arrays.toString(e2.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.f19413b = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            brh brhVar = (brh) arrayList.get(i3);
            fbc fbcVar = new fbc(14);
            new WeakReference(brhVar);
            bwo.r(brhVar.cw);
            bwo.r(brhVar.bx);
            bwo.r(brhVar.br);
            bwo.r(brhVar.as);
            bwo.r(brhVar.bp);
            this.f19413b.add(fbcVar);
        }
        if (i == 0) {
            r = bwo.r(aepVar.cw);
            r2 = bwo.r(aepVar.br);
            bwoVar.ah();
        } else {
            r = bwo.r(aepVar.bx);
            r2 = bwo.r(aepVar.as);
            bwoVar.ah();
        }
        return r2 - r;
    }

    public final void i(int i, ic icVar) {
        Iterator it = this.f19415d.iterator();
        while (it.hasNext()) {
            brh brhVar = (brh) it.next();
            ArrayList arrayList = icVar.f19415d;
            if (!arrayList.contains(brhVar)) {
                arrayList.add(brhVar);
            }
            int i2 = icVar.f19416e;
            if (i == 0) {
                brhVar.az = i2;
            } else {
                brhVar.ci = i2;
            }
        }
        this.f19414c = icVar.f19416e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f19417f;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        String x = awf.x(sb, this.f19416e, "] <");
        Iterator it = this.f19415d.iterator();
        while (it.hasNext()) {
            brh brhVar = (brh) it.next();
            StringBuilder l = tn.l(x, " ");
            l.append(brhVar.an);
            x = l.toString();
        }
        return awf.c(x, " >");
    }
}
