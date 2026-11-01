package g;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class gcv {

    /* renamed from: a, reason: collision with root package name */
    public int f17900a;

    /* renamed from: b, reason: collision with root package name */
    public gcv f17901b;

    /* renamed from: c, reason: collision with root package name */
    public final fza f17902c;

    /* renamed from: d, reason: collision with root package name */
    public final fza f17903d;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f17904e;

    public gcv(HashSet hashSet, fza fzaVar, fza fzaVar2) {
        this.f17902c = fzaVar;
        this.f17903d = fzaVar2;
        this.f17904e = hashSet;
    }

    public final ArrayList f() {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = this.f17904e;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            fza fzaVar = (fza) it.next();
            for (fza fzaVar2 : fzaVar.f17684d) {
                if (!hashSet.contains(fzaVar2) && !ffb.bd(fzaVar2)) {
                    arrayList.add(new exw(fzaVar, fzaVar2, false));
                }
            }
        }
        return arrayList;
    }

    public final HashSet g() {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = this.f17904e;
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            fza fzaVar = (fza) it.next();
            for (fza fzaVar2 : fzaVar.f17684d) {
                if (!hashSet2.contains(fzaVar2)) {
                    if (!fzaVar2.l.j(acq.bh)) {
                        hashSet.add(fzaVar);
                    }
                }
            }
        }
        return hashSet;
    }

    public final String toString() {
        return "LOOP:" + this.f17900a + ": " + this.f17902c + "->" + this.f17903d;
    }
}
