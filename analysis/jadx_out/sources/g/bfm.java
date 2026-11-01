package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class bfm {

    /* renamed from: a, reason: collision with root package name */
    public final eek f11452a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11453b;

    public bfm(eek eekVar, gsh gshVar) {
        this.f11452a = eekVar;
        List<gsh> list = eekVar.aj;
        ArrayList arrayList = new ArrayList(list.size());
        gks gksVar = eekVar.ai;
        if (gksVar == gshVar) {
            for (gsh gshVar2 : list) {
                gshVar2.getClass();
                if (gshVar2 instanceof gks) {
                    arrayList.add(((gks) gshVar2).f18326a);
                }
            }
        } else {
            arrayList.add(gksVar.f18326a);
            for (gsh gshVar3 : list) {
                if (gshVar3 != gshVar) {
                    gshVar3.getClass();
                    if (gshVar3 instanceof gks) {
                        arrayList.add(((gks) gshVar3).f18326a);
                    }
                }
            }
        }
        this.f11453b = arrayList;
    }

    public abstract boolean c(eie eieVar);

    public final String toString() {
        return "(" + this.f11452a.ah + ':' + evh.d(this.f11453b, ", ", new fov(0)) + ')';
    }
}
