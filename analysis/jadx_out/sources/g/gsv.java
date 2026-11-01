package g;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class gsv extends eko {
    /* JADX WARN: Multi-variable type inference failed */
    public static Set be(AbstractCollection abstractCollection) {
        int size = abstractCollection.size();
        if (size == 0) {
            return gpk.f18539a;
        }
        if (size != 1) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(fhj.av(abstractCollection.size()));
            bm(abstractCollection, linkedHashSet);
            return linkedHashSet;
        }
        Set singleton = Collections.singleton(abstractCollection instanceof List ? ((List) abstractCollection).get(0) : abstractCollection.iterator().next());
        bff.e(singleton, "singleton(...)");
        return singleton;
    }

    public static List bf(Iterable iterable) {
        ArrayList arrayList;
        bff.p(iterable, "<this>");
        boolean z = iterable instanceof Collection;
        fai faiVar = fai.f16469a;
        if (!z) {
            if (z) {
                arrayList = new ArrayList((Collection) iterable);
            } else {
                arrayList = new ArrayList();
                bm(iterable, arrayList);
            }
            int size = arrayList.size();
            return size != 0 ? size != 1 ? arrayList : cro.r(arrayList.get(0)) : faiVar;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return faiVar;
        }
        if (size2 != 1) {
            return new ArrayList(collection);
        }
        return cro.r(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static Object bg(List list) {
        bff.p(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(grj.bd(list));
    }

    public static String bh(Collection collection, String str, and andVar, int i) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        String str2 = str;
        String str3 = (i & 2) != 0 ? "" : "[";
        String str4 = (i & 4) == 0 ? "]" : "";
        if ((i & 32) != 0) {
            andVar = null;
        }
        bff.p(collection, "<this>");
        StringBuilder sb = new StringBuilder();
        bk(collection, sb, str2, str3, str4, "...", andVar);
        return sb.toString();
    }

    public static int[] bi(ArrayList arrayList) {
        int[] iArr = new int[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Number) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static final void bk(Iterable iterable, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, and andVar) {
        bff.p(iterable, "<this>");
        sb.append(charSequence2);
        int i = 0;
        for (Object obj : iterable) {
            i++;
            if (i > 1) {
                sb.append(charSequence);
            }
            gs.u(sb, obj, andVar);
        }
        sb.append(charSequence3);
    }

    public static ArrayList bl(Iterable iterable, List list) {
        Collection collection = (Collection) iterable;
        ArrayList arrayList = new ArrayList(collection.size() + list.size());
        arrayList.addAll(list);
        arrayList.addAll(collection);
        return arrayList;
    }

    public static final void bm(Iterable iterable, AbstractCollection abstractCollection) {
        bff.p(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }
}
