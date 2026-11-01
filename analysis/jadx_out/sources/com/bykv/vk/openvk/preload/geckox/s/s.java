package com.bykv.vk.openvk.preload.geckox.s;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.utils.no;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class s extends com.bykv.vk.openvk.preload.d.p<String, Map<String, List<Pair<String, Long>>>> {
    private List<String> ia;
    private File mn;

    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Map<String, List<Pair<String, Long>>>> dVar, String str) throws Throwable {
        Long dq;
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "get local channel version:", str);
        HashMap hashMap = new HashMap();
        for (String str2 : this.ia) {
            File file = new File(this.mn, str2);
            String[] list = file.list();
            ArrayList arrayList = new ArrayList();
            if (list != null && list.length > 0) {
                for (String str3 : list) {
                    File file2 = new File(file, str3);
                    if (file2.isDirectory() && (dq = no.dq(file2)) != null) {
                        arrayList.add(new Pair(str3, dq));
                    }
                }
            }
            hashMap.put(str2, arrayList);
        }
        return dVar.dq((com.bykv.vk.openvk.preload.d.d<Map<String, List<Pair<String, Long>>>>) hashMap);
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        super.dq(objArr);
        this.mn = (File) objArr[0];
        this.ia = (List) objArr[1];
    }
}
