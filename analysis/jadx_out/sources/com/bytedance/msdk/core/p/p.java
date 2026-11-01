package com.bytedance.msdk.core.p;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.ia.ir;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class p {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.List] */
    public static Map<Integer, List<no>> d(List<no> list) {
        ArrayList arrayList;
        int e2;
        if (list == null || list.size() == 0) {
            return null;
        }
        ir.dq(list);
        HashMap hashMap = new HashMap();
        int i = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        for (int i2 = 0; i2 < list.size(); i2++) {
            no noVar = list.get(i2);
            if (noVar != null) {
                if (noVar.gh() == 100 || noVar.gh() == 0) {
                    arrayList = new ArrayList();
                    e2 = noVar.e();
                } else if (noVar.wp() != i) {
                    arrayList = new ArrayList();
                    e2 = noVar.wp();
                } else {
                    e2 = i;
                    arrayList = (List) hashMap.get(Integer.valueOf(i));
                }
                if (arrayList != null) {
                    arrayList.add(noVar);
                    hashMap.put(Integer.valueOf(e2), arrayList);
                }
                i = e2;
            }
        }
        return hashMap;
    }

    public static Map<Integer, List<no>> dq(List<no> list) {
        int i;
        List list2;
        if (list == null || list.size() == 0) {
            return null;
        }
        ir.dq(list);
        HashMap hashMap = new HashMap();
        int i2 = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        for (int i3 = 0; i3 < list.size(); i3++) {
            no noVar = list.get(i3);
            if (noVar != null) {
                if (noVar.wp() != i2) {
                    list2 = new ArrayList();
                    i = noVar.wp();
                } else {
                    i = i2;
                    list2 = (List) hashMap.get(Integer.valueOf(i2));
                }
                if (list2 != null) {
                    list2.add(noVar);
                    hashMap.put(Integer.valueOf(i), list2);
                }
                i2 = i;
            }
        }
        return hashMap;
    }
}
