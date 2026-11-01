package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.OptionalInt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class bra implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12064a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ hed f12065b;

    public /* synthetic */ bra(hed hedVar, int i) {
        this.f12064a = i;
        this.f12065b = hedVar;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        eek eekVar;
        String name;
        switch (this.f12064a) {
            case 0:
                aea aeaVar = (aea) obj;
                aeaVar.f10084g = true;
                Iterable.b.forEach(aeaVar.f10080c, new esk(14));
                giq.l(this.f12065b.aj, aeaVar.i);
                break;
            case 1:
                gcv gcvVar = (gcv) obj;
                hed hedVar = this.f12065b;
                if (hedVar.ac.isEmpty()) {
                    hedVar.ac = new ArrayList(5);
                }
                gcvVar.f17900a = hedVar.ac.size();
                hedVar.ac.add(gcvVar);
                break;
            case 2:
                fza fzaVar = (fza) obj;
                if (fzaVar.l.g(csv.LOOP_START)) {
                    List e2 = fzaVar.l.e(acq.at);
                    hed hedVar2 = this.f12065b;
                    Objects.requireNonNull(hedVar2);
                    Iterable.b.forEach(e2, new bra(hedVar2, 1));
                    break;
                }
                break;
            case 3:
                vm vmVar = (vm) obj;
                gks gksVar = vmVar.f20177c;
                ArrayList arrayList = vmVar.f20178d;
                acq acqVar = acq.s;
                fih fihVar = (fih) gksVar.l.k(acqVar);
                hed hedVar3 = this.f12065b;
                if (!(fihVar == null ? false : dbs.c(hedVar3, vmVar, fihVar.f16833a, fihVar.f16834b))) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        fih fihVar2 = (fih) ((gks) it.next()).l.k(acqVar);
                        if (fihVar2 == null ? false : dbs.c(hedVar3, vmVar, fihVar2.f16833a, fihVar2.f16834b)) {
                            break;
                        }
                    }
                    bot botVar = (bot) hedVar3.l.k(acq.o);
                    if (botVar != null) {
                        OptionalInt max = Collection.b.stream(arrayList).mapToInt(new dbm(7)).max();
                        if (!max.isEmpty()) {
                            gks gksVar2 = vmVar.f20177c;
                            int i = (gksVar2 == null || (eekVar = gksVar2.ae) == null) ? -1 : eekVar.ag;
                            int asInt = max.getAsInt();
                            int i2 = vmVar.f20180f;
                            for (ers ersVar : botVar.f11930a) {
                                if (ersVar.h() == i2) {
                                    int j = ersVar.j();
                                    int i3 = ersVar.i();
                                    if (!(j <= i && i <= i3)) {
                                        if (j <= asInt && asInt <= i3) {
                                        }
                                    }
                                    dbs.c(hedVar3, vmVar, eak.q(hedVar3, ersVar), ersVar.getName());
                                    break;
                                }
                            }
                            break;
                        }
                    }
                }
                break;
            case 4:
                List<abi> list = ((vm) obj).f20179e;
                if (list == null) {
                    list = Collections.EMPTY_LIST;
                }
                for (abi abiVar : list) {
                    List list2 = abiVar.aj;
                    List list3 = abiVar.aj;
                    HashSet hashSet = new HashSet(list2.size() + 1);
                    gks gksVar3 = abiVar.ai;
                    if (awf.n(gksVar3) && (name = gksVar3.getName()) != null) {
                        hashSet.add(name);
                    }
                    Iterable.b.forEach(list3, new bbm(hashSet, 0));
                    if (hashSet.size() == 1) {
                        String str = (String) hashSet.iterator().next();
                        abiVar.ai.c(str);
                        Iterable.b.forEach(list3, new agx(10, str));
                    } else if (hashSet.size() > 1) {
                        this.f12065b.bw("Different variable names in phi insn: " + hashSet + ", use first");
                        String str2 = (String) hashSet.iterator().next();
                        abiVar.ai.c(str2);
                        Iterable.b.forEach(list3, new agx(10, str2));
                    }
                }
                break;
            case 5:
                vm vmVar2 = (vm) obj;
                if (!((cwx) vmVar2.h.f16721f).h()) {
                    StringBuilder sb = new StringBuilder("Type inference failed for: ");
                    hed hedVar4 = this.f12065b;
                    sb.append(vmVar2.w(hedVar4));
                    hedVar4.bu(sb.toString());
                }
                if (vmVar2.u().f15632e == null) {
                    vmVar2.u().f15632e = cwx.ad;
                    break;
                }
                break;
            case 6:
                fpd.q(this.f12065b, (eek) obj);
                break;
            default:
                eek eekVar2 = (eek) obj;
                fpd.j(this.f12065b, eekVar2);
                eekVar2.w(csv.DONT_GENERATE);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f12064a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
