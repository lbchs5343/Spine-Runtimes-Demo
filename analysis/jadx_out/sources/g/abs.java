package g;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class abs implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9942a;

    public /* synthetic */ abs(int i) {
        this.f9942a = i;
    }

    public /* synthetic */ abs(mo moVar) {
        this.f9942a = 3;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.f9942a) {
            case 0:
                cmy cmyVar = (cmy) obj;
                gqc gqcVar = cmyVar.f13152b;
                int i = cmyVar.f13153c - 251;
                int ai = gqcVar.ai();
                for (int i2 = 0; i2 < i; i2++) {
                    int ap = gqcVar.ap();
                    if (ap == 7 || ap == 8) {
                        gqcVar.ai();
                    }
                }
                int d2 = bls.d(cmyVar, ai);
                fwv fwvVar = fwv.SAME_FRAME;
                dl dlVar = new dl(d2);
                dlVar.f14345c = 0;
                dl dlVar2 = cmyVar.f13154d;
                dlVar.f14343a = (dlVar2 != null ? dlVar2.f14343a : 0) - i;
                cmyVar.f13151a = dlVar;
                break;
            case 1:
                cmy cmyVar2 = (cmy) obj;
                gqc gqcVar2 = cmyVar2.f13152b;
                int ai2 = gqcVar2.ai();
                int ai3 = gqcVar2.ai();
                while (r3 < ai3) {
                    int ap2 = gqcVar2.ap();
                    if (ap2 == 7 || ap2 == 8) {
                        gqcVar2.ai();
                    }
                    r3++;
                }
                int ai4 = gqcVar2.ai();
                cqz[] an = awt.an(gqcVar2, ai4);
                int d3 = bls.d(cmyVar2, ai2);
                fwv fwvVar2 = fwv.SAME_FRAME;
                dl dlVar3 = new dl(d3);
                dlVar3.f14343a = ai3;
                dlVar3.f14345c = ai4;
                dlVar3.f14346d = an;
                cmyVar2.f13151a = dlVar3;
                break;
            case 2:
                ((lh) ((epk) obj)).w(csv.REMOVE);
                break;
            case 3:
                vm vmVar = (vm) obj;
                List<abi> list = vmVar.f20179e;
                if (list == null) {
                    list = Collections.EMPTY_LIST;
                }
                for (abi abiVar : list) {
                    LinkedHashSet linkedHashSet = (LinkedHashSet) vmVar.h.f16719c;
                    linkedHashSet.addAll((LinkedHashSet) abiVar.ai.f18326a.h.f16719c);
                    Iterator it = abiVar.aj.iterator();
                    while (it.hasNext()) {
                        linkedHashSet.addAll((LinkedHashSet) ((gks) ((gsh) it.next())).f18326a.h.f16719c);
                    }
                }
                break;
            default:
                gpf gpfVar = (gpf) obj;
                gpfVar.f18534c.f(gpfVar.f18532a);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f9942a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
