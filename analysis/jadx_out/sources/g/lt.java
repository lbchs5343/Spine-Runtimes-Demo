package g;

import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class lt {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f19613a = dsr.k(lt.class);

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static void b(String str, ArrayList arrayList, List list) {
        String sb;
        ghr ghrVar;
        Object obj;
        String str2;
        Object obj2;
        ghr ghrVar2;
        int intValue;
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fpa fpaVar = (fpa) it.next();
            any anyVar = fpaVar.f17179a;
            LinkedHashMap linkedHashMap = fpaVar.f17181c;
            if (anyVar == any.SYSTEM) {
                String str3 = fpaVar.f17180b;
                str3.getClass();
                char c2 = 65535;
                switch (str3.hashCode()) {
                    case -1911645549:
                        if (str3.equals("Ldalvik/annotation/InnerClass;")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1104599473:
                        if (str3.equals("Ldalvik/annotation/AnnotationDefault;")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -858881176:
                        if (str3.equals("Ldalvik/annotation/Throws;")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1338970954:
                        if (str3.equals("Ldalvik/annotation/MethodParameters;")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 1664436329:
                        if (str3.equals("Ldalvik/annotation/Signature;")) {
                            c2 = 4;
                            break;
                        }
                        break;
                }
                dba dbaVar = f19613a;
                switch (c2) {
                    case 0:
                        try {
                            dnd dndVar = dnd.ENCODED_STRING;
                            if (!linkedHashMap.isEmpty() && (ghrVar = (ghr) linkedHashMap.get(abn.EXTRA_UA_APP_NAME)) != null && ghrVar.f18175b == dndVar) {
                                obj = ghrVar.f18176f;
                                str2 = (String) obj;
                                dnd dndVar2 = dnd.ENCODED_INT;
                                obj2 = 0;
                                if (!linkedHashMap.isEmpty() && (ghrVar2 = (ghr) linkedHashMap.get("accessFlags")) != null && ghrVar2.f18175b == dndVar2) {
                                    obj2 = ghrVar2.f18176f;
                                }
                                intValue = ((Integer) obj2).intValue();
                                if (str2 == null || intValue != 0) {
                                    arrayList.add(new gmk(Collections.singletonMap(str, new dmk(intValue, str, null, str2))));
                                    break;
                                } else {
                                    break;
                                }
                            }
                            obj = null;
                            str2 = (String) obj;
                            dnd dndVar22 = dnd.ENCODED_INT;
                            obj2 = 0;
                            if (!linkedHashMap.isEmpty()) {
                                obj2 = ghrVar2.f18176f;
                            }
                            intValue = ((Integer) obj2).intValue();
                            if (str2 == null) {
                            }
                            arrayList.add(new gmk(Collections.singletonMap(str, new dmk(intValue, str, null, str2))));
                        } catch (Exception e2) {
                            dbaVar.t(fpaVar, "Failed to parse annotation: {}", e2);
                            break;
                        }
                        break;
                    case 1:
                        ghr ghrVar3 = (ghr) linkedHashMap.get("value");
                        if (ghrVar3 != null && ghrVar3.f18175b == dnd.ENCODED_ANNOTATION) {
                            arrayList.add(new feu(((fpa) ghrVar3.f18176f).f17181c));
                            break;
                        }
                        break;
                    case 2:
                        try {
                            ghr ghrVar4 = (ghr) linkedHashMap.get("value");
                            if (ghrVar4 != null) {
                                arrayList.add(new cym((List) Collection.b.stream((List) ghrVar4.f18176f).map(new fov(18)).collect(Collectors.toList())));
                                break;
                            } else {
                                break;
                            }
                        } catch (Exception e3) {
                            dbaVar.c("Failed to convert dalvik throws annotation", e3);
                            break;
                        }
                    case 3:
                        try {
                            List bs = dyd.bs(fpaVar, "names");
                            List bs2 = dyd.bs(fpaVar, "accessFlags");
                            if (!bs.isEmpty() && bs.size() == bs2.size()) {
                                int size = bs.size();
                                ArrayList arrayList2 = new ArrayList(size);
                                for (int i = 0; i < size; i++) {
                                    arrayList2.add(new bjc(((Integer) ((ghr) bs2.get(i)).f18176f).intValue(), (String) ((ghr) bs.get(i)).f18176f));
                                }
                                arrayList.add(new esp(arrayList2));
                                break;
                            }
                        } catch (Exception e4) {
                            dbaVar.t(fpaVar, "Failed to parse annotation: {}", e4);
                            break;
                        }
                        break;
                    case 4:
                        List list2 = (List) ((ghr) linkedHashMap.get("value")).f18176f;
                        if (list2.size() == 1) {
                            sb = (String) ((ghr) list2.get(0)).f18176f;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            Iterator it2 = list2.iterator();
                            while (it2.hasNext()) {
                                sb2.append((String) ((ghr) it2.next()).f18176f);
                            }
                            sb = sb2.toString();
                        }
                        arrayList.add(new dfc(sb));
                        break;
                }
            }
        }
        acr.bj(ks.b(list), arrayList);
    }
}
