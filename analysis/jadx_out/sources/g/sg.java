package g;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class sg implements gjf, jq {

    /* renamed from: c, reason: collision with root package name */
    public final gtd f19966c;

    /* renamed from: d, reason: collision with root package name */
    public final Path f19967d = new Path();

    /* renamed from: e, reason: collision with root package name */
    public final Path f19968e = new Path();

    /* renamed from: f, reason: collision with root package name */
    public final Path f19969f = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f19965b = new ArrayList();

    public sg(gtd gtdVar) {
        this.f19966c = gtdVar;
    }

    @Override // g.jq
    public final void a(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            dvz dvzVar = (dvz) listIterator.previous();
            if (dvzVar instanceof gjf) {
                this.f19965b.add((gjf) dvzVar);
                listIterator.remove();
            }
        }
    }

    public final void g(Path.Op op) {
        Path path = this.f19968e;
        path.reset();
        Path path2 = this.f19967d;
        path2.reset();
        ArrayList arrayList = this.f19965b;
        for (int size = arrayList.size() - 1; size > 0; size--) {
            gjf gjfVar = (gjf) arrayList.get(size);
            if (gjfVar instanceof bl) {
                bl blVar = (bl) gjfVar;
                ArrayList arrayList2 = (ArrayList) blVar.k();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path p = ((gjf) arrayList2.get(size2)).p();
                    Matrix matrix = blVar.i;
                    amp ampVar = blVar.h;
                    if (ampVar != null) {
                        matrix = ampVar.o();
                    } else {
                        matrix.reset();
                    }
                    p.transform(matrix);
                    path.addPath(p);
                }
            } else {
                path.addPath(gjfVar.p());
            }
        }
        int i = 0;
        gjf gjfVar2 = (gjf) arrayList.get(0);
        if (gjfVar2 instanceof bl) {
            bl blVar2 = (bl) gjfVar2;
            List k = blVar2.k();
            while (true) {
                ArrayList arrayList3 = (ArrayList) k;
                if (i >= arrayList3.size()) {
                    break;
                }
                Path p2 = ((gjf) arrayList3.get(i)).p();
                Matrix matrix2 = blVar2.i;
                amp ampVar2 = blVar2.h;
                if (ampVar2 != null) {
                    matrix2 = ampVar2.o();
                } else {
                    matrix2.reset();
                }
                p2.transform(matrix2);
                path2.addPath(p2);
                i++;
            }
        } else {
            path2.set(gjfVar2.p());
        }
        this.f19969f.op(path2, path, op);
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f19965b;
            if (i >= arrayList.size()) {
                return;
            }
            ((gjf) arrayList.get(i)).n(list, list2);
            i++;
        }
    }

    @Override // g.gjf
    public final Path p() {
        Path path = this.f19969f;
        path.reset();
        gtd gtdVar = this.f19966c;
        if (!gtdVar.f18716b) {
            int i = ftd.f17369a[gtdVar.f18715a.ordinal()];
            if (i == 1) {
                int i2 = 0;
                while (true) {
                    ArrayList arrayList = this.f19965b;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    path.addPath(((gjf) arrayList.get(i2)).p());
                    i2++;
                }
            } else {
                if (i == 2) {
                    g(Path.Op.UNION);
                    return path;
                }
                if (i == 3) {
                    g(Path.Op.REVERSE_DIFFERENCE);
                    return path;
                }
                if (i == 4) {
                    g(Path.Op.INTERSECT);
                    return path;
                }
                if (i == 5) {
                    g(Path.Op.XOR);
                    return path;
                }
            }
        }
        return path;
    }
}
