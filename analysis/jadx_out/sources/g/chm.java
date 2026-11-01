package g;

import j$.util.Collection;
import j$.util.Comparator;
import j$.util.List;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class chm {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f12879a = dsr.k(chm.class);

    public static ArrayList b(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cno cnoVar = (cno) it.next();
            cqc h = cnoVar.h();
            List list = cnoVar.f13186e.aa;
            Objects.requireNonNull(h);
            Iterator it2 = acw.t(list, new eug(2, h)).iterator();
            int i = 0;
            while (it2.hasNext()) {
                i += ((cno) it2.next()).f13186e.az() + 1;
            }
            arrayList2.add(new fvk(cnoVar, i));
        }
        Collections.sort(arrayList2);
        HashSet hashSet = new HashSet(arrayList.size());
        Comparator comparingInt = Comparator.a.comparingInt(new dbm(10));
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(16);
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            cno cnoVar2 = ((fvk) it3.next()).f17479a;
            cci cciVar = cnoVar2.f13186e;
            if (hashSet.add(cnoVar2)) {
                if (cciVar.az() == 0) {
                    arrayList4.add(cnoVar2);
                    if (arrayList4.size() >= 16) {
                        arrayList3.add(arrayList4);
                        arrayList4 = new ArrayList(16);
                    }
                } else {
                    ArrayList arrayList5 = new ArrayList();
                    cqc h2 = cnoVar2.h();
                    List list2 = cciVar.aa;
                    Objects.requireNonNull(h2);
                    Iterator it4 = acw.t(list2, new eug(2, h2)).iterator();
                    while (it4.hasNext()) {
                        cno i2 = ((cno) it4.next()).i();
                        if (!hashSet.contains(i2)) {
                            arrayList5.add(i2);
                            hashSet.add(i2);
                        }
                    }
                    List.b.sort(arrayList5, comparingInt);
                    arrayList5.add(cnoVar2);
                    arrayList3.add(evh.f(arrayList5));
                }
            }
        }
        if (!arrayList4.isEmpty()) {
            arrayList3.add(arrayList4);
        }
        return arrayList3;
    }

    public final java.util.List c(ArrayList arrayList) {
        dba dbaVar = f12879a;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            ArrayList b2 = b(arrayList);
            if (!dbaVar.af()) {
                return b2;
            }
            dbaVar.a(Long.valueOf(System.currentTimeMillis() - currentTimeMillis), "Build decompilation batches in {}ms for {} classes", Integer.valueOf(arrayList.size()));
            return b2;
        } catch (BootstrapMethodError | StackOverflowError unused) {
            dbaVar.k("Stack overflow while building decompile batches, continue with fallback");
            return (java.util.List) Collection.b.stream(arrayList).sorted(Comparator.a.comparingInt(new dbm(9))).map(new fov(17)).collect(Collectors.toList());
        } catch (Exception e2) {
            dbaVar.c("Build batches failed (continue with fallback)", e2);
            return (java.util.List) Collection.b.stream(arrayList).sorted(Comparator.a.comparingInt(new dbm(9))).map(new fov(17)).collect(Collectors.toList());
        }
    }
}
