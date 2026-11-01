package g;

import j$.lang.Iterable;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public final class guv implements eue {

    /* renamed from: a, reason: collision with root package name */
    public fza f18787a;

    /* renamed from: b, reason: collision with root package name */
    public List f18788b;

    /* renamed from: f, reason: collision with root package name */
    public guv f18789f;
    public final int h;
    public final List i;

    /* renamed from: g, reason: collision with root package name */
    public List f18790g = Collections.EMPTY_LIST;
    public boolean j = false;

    public guv(List list, List list2, int i) {
        this.h = i;
        this.i = list;
        this.f18788b = list2;
        Iterable.b.forEach(list, new agx(23, this));
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final fky d() {
        return acq.aa;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && guv.class == obj.getClass()) {
            guv guvVar = (guv) obj;
            if (this.h == guvVar.h && this.i.equals(guvVar.i) && this.f18788b.equals(guvVar.f18788b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f18788b.hashCode() * 31) + this.i.hashCode();
    }

    public final void k(LinkedList linkedList, fza fzaVar, HashSet hashSet, ArrayList arrayList, LinkedList linkedList2) {
        boolean z;
        LinkedList linkedList3;
        HashSet hashSet2;
        ArrayList arrayList2;
        LinkedList linkedList4;
        for (fza fzaVar2 : fzaVar.f17684d) {
            if (!arrayList.contains(fzaVar2)) {
                if (fzaVar2.l.g(csv.EXC_BOTTOM_SPLITTER)) {
                    continue;
                } else {
                    arrayList.add(fzaVar2);
                    if (fzaVar2.l.g(csv.LOOP_END)) {
                        ArrayList arrayList3 = ((frs) fzaVar2.l.k(acq.at)).f17307b;
                        LinkedList linkedList5 = new LinkedList();
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            gcv gcvVar = (gcv) it.next();
                            linkedList5.add(gcvVar.f17902c);
                            Iterator it2 = gcvVar.f().iterator();
                            while (it2.hasNext()) {
                                exw exwVar = (exw) it2.next();
                                if (exwVar.f16344b == fzaVar2) {
                                    linkedList5.add(exwVar.f16343a);
                                }
                            }
                        }
                        if (!acw.bh(linkedList5, new egl(11, arrayList))) {
                            linkedList.add(new elt(fzaVar, fzaVar2, dun.LOOP_EXIT));
                        }
                    }
                    Iterator it3 = hashSet.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (ffb.ac(fzaVar2, (fza) it3.next())) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (hashSet.contains(fzaVar2) || z) {
                        linkedList3 = linkedList;
                        hashSet2 = hashSet;
                        arrayList2 = arrayList;
                        linkedList4 = linkedList2;
                        k(linkedList3, fzaVar2, hashSet2, arrayList2, linkedList4);
                    } else {
                        ArrayList arrayList4 = new ArrayList(this.f18788b.size() + 1);
                        arrayList4.addAll(this.f18788b);
                        arrayList4.add(fzaVar2);
                        fza ap = ffb.ap(arrayList4, false);
                        if (ap == null || ap == fzaVar2) {
                            linkedList3 = linkedList;
                            hashSet2 = hashSet;
                            arrayList2 = arrayList;
                            linkedList4 = linkedList2;
                            fza ba = ffb.ba(fzaVar2, Boolean.FALSE, false);
                            if (ba.l.g(csv.EXC_TOP_SPLITTER)) {
                                HashSet hashSet3 = new HashSet();
                                Iterator it4 = acw.bn(ba.f17684d, new brj(23)).iterator();
                                while (it4.hasNext()) {
                                    guv guvVar = (guv) ((fza) it4.next()).l.k(acq.aa);
                                    if (guvVar != null && !linkedList4.contains(guvVar) && guvVar.f18787a == this.f18787a) {
                                        hashSet3.add(guvVar);
                                    }
                                }
                                if (!hashSet3.isEmpty()) {
                                    Iterator it5 = hashSet3.iterator();
                                    while (it5.hasNext()) {
                                        ((guv) it5.next()).n(linkedList3, arrayList2, linkedList4);
                                    }
                                }
                            }
                            if (ap == null) {
                                linkedList3.add(new elt(fzaVar, fzaVar2, dun.PREMATURE_EXIT));
                            } else {
                                if (ap != fzaVar2) {
                                    throw new gck("Unexpected code execution branch taken during try edge resolution: blk=" + fzaVar + ",successor=" + fzaVar2);
                                }
                                linkedList3.add(new elt(fzaVar, fzaVar2, dun.TRUE_FALLTHROUGH));
                            }
                        } else {
                            k(linkedList, fzaVar2, hashSet, arrayList, linkedList2);
                        }
                    }
                    linkedList = linkedList3;
                    hashSet = hashSet2;
                    arrayList = arrayList2;
                    linkedList2 = linkedList4;
                }
            }
        }
    }

    public final List l() {
        boolean isEmpty = this.f18790g.isEmpty();
        List list = this.i;
        if (!isEmpty) {
            ArrayList arrayList = new ArrayList(list);
            Iterator it = this.f18790g.iterator();
            while (it.hasNext()) {
                arrayList.addAll(((guv) it.next()).i);
            }
            list = arrayList;
        }
        return Collections.unmodifiableList(list);
    }

    public final HashMap m() {
        List<aea> l = l();
        ArrayList arrayList = new ArrayList(l.size());
        for (aea aeaVar : l) {
            fza fzaVar = aeaVar.i;
            guv guvVar = aeaVar.j;
            fza fzaVar2 = null;
            if (guvVar.f18790g.size() > 1) {
                aea.f10078a.k("No support yet for finding bottom block of try body with multipe inner trys");
            } else {
                if (!guvVar.f18790g.isEmpty()) {
                    guvVar = (guv) evh.q(guvVar.f18790g);
                }
                for (fza fzaVar3 : aeaVar.i.f17685e) {
                    if (fzaVar3.l.g(csv.EXC_BOTTOM_SPLITTER)) {
                        Iterator it = fzaVar3.f17685e.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            if (((guv) ((fza) it.next()).l.k(acq.aa)) == guvVar) {
                                fzaVar2 = fzaVar3;
                                break;
                            }
                        }
                        if (fzaVar2 != null) {
                            break;
                        }
                    }
                }
            }
            if (fzaVar2 == null && (fzaVar2 = ffb.ap(acw.bn(fzaVar.f17685e, new eio(this, 1)), false)) == null) {
                fzaVar2 = this.f18787a;
            }
            arrayList.add(new elt(fzaVar2, fzaVar, dun.HANDLER, Optional.of(aeaVar)));
        }
        LinkedList linkedList = new LinkedList();
        n(linkedList, new ArrayList(), new LinkedList());
        ArrayList arrayList2 = new ArrayList(linkedList.size() + arrayList.size());
        arrayList2.addAll(arrayList);
        arrayList2.addAll(linkedList);
        List<elt> unmodifiableList = Collections.unmodifiableList(arrayList2);
        HashMap hashMap = new HashMap();
        for (elt eltVar : unmodifiableList) {
            hashMap.put(eltVar, eltVar.f15777c);
        }
        return hashMap;
    }

    public final void n(LinkedList linkedList, ArrayList arrayList, LinkedList linkedList2) {
        List l = l();
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f18788b);
        Iterator it = l.iterator();
        while (it.hasNext()) {
            hashSet.removeAll(((aea) it.next()).f10080c);
        }
        fza y = ffb.y(new ArrayList(hashSet));
        linkedList2.add(this);
        k(linkedList, y, hashSet, arrayList, linkedList2);
    }

    public final String toString() {
        if (this.j) {
            return "Merged into " + this.f18789f;
        }
        StringBuilder sb = new StringBuilder("TryCatch #");
        sb.append(this.h);
        sb.append(" {");
        sb.append(evh.h(", ", this.i));
        sb.append(", blocks: (");
        sb.append(evh.h(", ", this.f18788b));
        sb.append(')');
        if (this.f18787a != null) {
            sb.append(", top: ");
            sb.append(this.f18787a);
        }
        if (this.f18789f != null) {
            sb.append(", outer: #");
            sb.append(this.f18789f.h);
        }
        if (!this.f18790g.isEmpty()) {
            sb.append(", inners: ");
            sb.append(evh.d(this.f18790g, ", ", new coq(9)));
        }
        sb.append(" }");
        return sb.toString();
    }
}
