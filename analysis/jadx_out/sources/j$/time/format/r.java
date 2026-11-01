package j$.time.format;

import j$.util.stream.Z2;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final Map f20563a;

    public r(int i, Map map) {
        switch (i) {
            case 1:
                this.f20563a = map;
                break;
            default:
                this.f20563a = map;
                HashMap hashMap = new HashMap();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry entry : map.entrySet()) {
                    HashMap hashMap2 = new HashMap();
                    for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                        String str = (String) entry2.getValue();
                        String str2 = (String) entry2.getValue();
                        Long l = (Long) entry2.getKey();
                        q qVar = b.f20525b;
                        hashMap2.put(str, new AbstractMap.SimpleImmutableEntry(str2, l));
                    }
                    ArrayList arrayList2 = new ArrayList(hashMap2.values());
                    Collections.sort(arrayList2, b.f20525b);
                    hashMap.put((v) entry.getKey(), arrayList2);
                    arrayList.addAll(arrayList2);
                    hashMap.put(null, arrayList);
                }
                Collections.sort(arrayList, b.f20525b);
                break;
        }
    }

    public String a(long j, v vVar) {
        Map map = (Map) this.f20563a.get(vVar);
        if (map != null) {
            return (String) map.get(Long.valueOf(j));
        }
        return null;
    }

    public void b(Z2 z2) {
        ((EnumMap) this.f20563a).put((EnumMap) z2, (Z2) 1);
    }
}
