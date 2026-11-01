package com.bytedance.msdk.ox.mn;

import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.ia.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class s {
    public static List<no> d(List<no> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (no noVar : list) {
            if (noVar != null && noVar.gh() == 0) {
                arrayList.add(noVar);
            }
        }
        return arrayList;
    }

    public static boolean d(int i) {
        return i == 0;
    }

    public static int dq(com.bytedance.msdk.core.no.d dVar, no noVar) {
        if (dVar == null || noVar == null) {
            return -999;
        }
        return (dVar.no() && noVar.ce()) ? noVar.e() : noVar.wp();
    }

    public static int dq(com.bytedance.msdk.core.no.d dVar, com.bytedance.msdk.d.s sVar) {
        if (dVar == null || sVar == null) {
            return -999;
        }
        return (dVar.no() && sVar.jn()) ? sVar.wq() : sVar.ae();
    }

    public static List<no> dq(List<no> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (no noVar : list) {
            if (noVar != null && noVar.gh() == 100) {
                arrayList.add(noVar);
            }
        }
        return arrayList;
    }

    public static Map<Integer, List<no>> dq(List<no> list, boolean z) {
        HashMap hashMap = new HashMap();
        if (!n.dq(list)) {
            for (int i = 0; i < list.size(); i++) {
                no noVar = list.get(i);
                if (noVar != null) {
                    int e2 = (z && noVar.ce()) ? noVar.e() : noVar.wp();
                    List list2 = (List) hashMap.get(Integer.valueOf(e2));
                    if (list2 == null) {
                        list2 = new ArrayList();
                    }
                    list2.add(noVar);
                    hashMap.put(Integer.valueOf(e2), list2);
                }
            }
        }
        return hashMap;
    }

    public static boolean dq(int i) {
        return i >= -299 && i < -100;
    }

    public static boolean dq(int i, List<Integer> list) {
        if (n.dq(list) || i >= list.size() || list.get(i).intValue() <= 0) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2).intValue() > 0) {
                return false;
            }
        }
        return true;
    }

    public static List<no> ox(List<no> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (no noVar : list) {
            if (noVar != null && (noVar.gh() == 1 || noVar.gh() == 3)) {
                arrayList.add(noVar);
            }
        }
        return arrayList;
    }

    public static boolean ox(int i) {
        return i == -100;
    }
}
