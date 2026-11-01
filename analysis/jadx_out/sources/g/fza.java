package g;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class fza extends lh implements cih, Comparable {
    public fza aa;

    /* renamed from: ab, reason: collision with root package name */
    public fza f17683ab;

    /* renamed from: f, reason: collision with root package name */
    public List f17686f;

    /* renamed from: g, reason: collision with root package name */
    public BitSet f17687g;
    public final int h;
    public BitSet i;
    public BitSet j;
    public int x;
    public final int y;
    public List z;
    public final ArrayList ac = new ArrayList(2);

    /* renamed from: e, reason: collision with root package name */
    public List f17685e = new ArrayList(1);

    /* renamed from: d, reason: collision with root package name */
    public List f17684d = new ArrayList(1);

    public fza(int i, int i2, int i3) {
        giu giuVar = giu.f18223a;
        this.f17687g = giuVar;
        this.j = giuVar;
        this.f17686f = new ArrayList(3);
        this.h = i;
        this.x = i2;
        this.y = i3;
    }

    @Override // g.amj
    public final String a() {
        return Integer.toString(this.h);
    }

    public final void ad() {
        List<fza> list = this.f17684d;
        if (!list.isEmpty()) {
            ArrayList arrayList = new ArrayList(list.size());
            for (fza fzaVar : list) {
                if (ffb.bd(fzaVar)) {
                    arrayList.add(fzaVar);
                }
            }
            if (this.l.g(csv.LOOP_END)) {
                Iterator it = this.l.e(acq.at).iterator();
                while (it.hasNext()) {
                    arrayList.add(((gcv) it.next()).f17902c);
                }
            }
            if (!arrayList.isEmpty()) {
                ArrayList arrayList2 = new ArrayList(list);
                arrayList2.removeAll(arrayList);
                list = arrayList2;
            }
        }
        this.z = list;
    }

    public final boolean ae(fza fzaVar) {
        return this.f17687g.get(fzaVar.x);
    }

    @Override // g.amj
    public final /* synthetic */ void b(fsw fswVar, eos eosVar) {
        awf.k(this, fswVar, eosVar);
    }

    @Override // g.cih
    public final List c() {
        return this.ac;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.h, ((fza) obj).h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fza) && this.h == ((fza) obj).h;
    }

    public final int hashCode() {
        return this.h;
    }

    public final String toString() {
        return "B:" + this.h + ':' + ack.d(this.y);
    }
}
