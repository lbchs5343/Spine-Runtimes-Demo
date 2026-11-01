package g;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class aod {

    /* renamed from: a, reason: collision with root package name */
    public final int f10554a;

    /* renamed from: b, reason: collision with root package name */
    public int f10555b;

    /* renamed from: c, reason: collision with root package name */
    public final eek f10556c;

    /* renamed from: d, reason: collision with root package name */
    public aod f10557d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f10558e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f10559f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f10560g;

    public aod(eek eekVar, ArrayList arrayList, int i) {
        this.f10556c = eekVar;
        this.f10558e = arrayList;
        this.f10554a = i;
        this.f10555b = i;
        ArrayList arrayList2 = new ArrayList();
        i(eekVar, arrayList2);
        this.f10559f = arrayList2;
    }

    public static boolean h(eek eekVar, BitSet bitSet) {
        gks gksVar;
        if (bitSet.isEmpty() || (gksVar = eekVar.ai) == null) {
            return false;
        }
        return bitSet.get(gksVar.f18327e);
    }

    public static void i(eek eekVar, ArrayList arrayList) {
        hay hayVar = eekVar.ah;
        List<gsh> list = eekVar.aj;
        if (hayVar == hay.TERNARY) {
            arrayList.addAll(((dwk) eekVar).f14942a.i());
        }
        for (gsh gshVar : list) {
            gshVar.getClass();
            if (gshVar instanceof gks) {
                arrayList.add((gks) gshVar);
            }
        }
        for (gsh gshVar2 : list) {
            gshVar2.getClass();
            if (gshVar2 instanceof cly) {
                i(((cly) gshVar2).f13104a, arrayList);
            }
        }
    }

    public final aod j() {
        aod j;
        aod aodVar = this.f10557d;
        if (aodVar != null && (j = aodVar.j()) != null) {
            this.f10557d = j;
        }
        return this.f10557d;
    }

    public final boolean k() {
        if (!this.f10556c.aw()) {
            return false;
        }
        ArrayList arrayList = this.f10560g;
        if (arrayList == null) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((aod) it.next()).k()) {
                return false;
            }
        }
        return true;
    }

    public final void l(BitSet bitSet) {
        Iterator it = this.f10559f.iterator();
        while (it.hasNext()) {
            bitSet.set(((gks) it.next()).f18327e);
        }
        ArrayList arrayList = this.f10560g;
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((aod) it2.next()).l(bitSet);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ArgsInfo: |");
        sb.append(this.f10555b);
        sb.append(" ->");
        aod aodVar = this.f10557d;
        sb.append(aodVar == null ? "-" : Integer.valueOf(aodVar.f10554a));
        sb.append(' ');
        sb.append(this.f10559f);
        sb.append(" : ");
        sb.append(this.f10556c);
        return sb.toString();
    }
}
