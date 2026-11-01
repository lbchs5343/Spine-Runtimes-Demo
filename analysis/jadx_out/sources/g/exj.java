package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class exj extends dgb {

    /* renamed from: e, reason: collision with root package name */
    public static final Class f16322e = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // g.dgb
    public final void c(long j, Object obj) {
        Object unmodifiableList;
        List list = (List) diy.f14260f.p(j, obj);
        if (list instanceof guu) {
            unmodifiableList = ((guu) list).zze();
        } else {
            if (f16322e.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof fqj) && (list instanceof cwe)) {
                gzj gzjVar = (gzj) ((cwe) list);
                if (gzjVar.f19052f) {
                    gzjVar.f19052f = false;
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        diy.h(j, obj, unmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.dgb
    public final void d(long j, Object obj, Object obj2) {
        fej fejVar;
        frx frxVar = diy.f14260f;
        List list = (List) frxVar.p(j, obj2);
        int size = list.size();
        List list2 = (List) frxVar.p(j, obj);
        if (list2.isEmpty()) {
            list2 = list2 instanceof guu ? new fej(size) : ((list2 instanceof fqj) && (list2 instanceof cwe)) ? ((cwe) list2).zzd(size) : new ArrayList(size);
            diy.h(j, obj, list2);
        } else {
            if (f16322e.isAssignableFrom(list2.getClass())) {
                ArrayList arrayList = new ArrayList(list2.size() + size);
                arrayList.addAll(list2);
                diy.h(j, obj, arrayList);
                fejVar = arrayList;
            } else if (list2 instanceof ghl) {
                fej fejVar2 = new fej(list2.size() + size);
                fejVar2.addAll(fejVar2.f16665a.size(), (ghl) list2);
                diy.h(j, obj, fejVar2);
                fejVar = fejVar2;
            } else if ((list2 instanceof fqj) && (list2 instanceof cwe)) {
                cwe cweVar = (cwe) list2;
                if (!((gzj) cweVar).f19052f) {
                    list2 = cweVar.zzd(list2.size() + size);
                    diy.h(j, obj, list2);
                }
            }
            list2 = fejVar;
        }
        int size2 = list2.size();
        int size3 = list.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list);
        }
        if (size2 > 0) {
            list = list2;
        }
        diy.h(j, obj, list);
    }
}
