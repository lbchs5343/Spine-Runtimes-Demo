package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class fhj extends awt {
    public static Map at(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return dyq.f15095a;
        }
        if (size == 1) {
            ger gerVar = (ger) arrayList.get(0);
            bff.p(gerVar, "pair");
            Map singletonMap = Collections.singletonMap(gerVar.d(), gerVar.a());
            bff.e(singletonMap, "singletonMap(...)");
            return singletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(av(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ger gerVar2 = (ger) it.next();
            linkedHashMap.put(gerVar2.b(), gerVar2.c());
        }
        return linkedHashMap;
    }

    public static final Map au(Map map) {
        bff.p(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        bff.e(singletonMap, "with(...)");
        return singletonMap;
    }

    public static int av(int i) {
        return i < 0 ? i : i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : he.UNDEFINED_ITEM_ID;
    }
}
