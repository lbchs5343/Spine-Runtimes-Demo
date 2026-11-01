package com.bykv.vk.openvk.preload.geckox.s;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.utils.no;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class p extends com.bykv.vk.openvk.preload.d.p<List<String>, List<Pair<String, Long>>> {
    private String ia;
    private File mn;

    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<List<Pair<String, Long>>> dVar, List<String> list) throws Throwable {
        List<String> list2 = list;
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "get local channel version:", list2);
        File file = new File(this.mn, this.ia);
        ArrayList arrayList = new ArrayList();
        for (String str : list2) {
            Long dq = no.dq(new File(file, str));
            arrayList.add(new Pair(str, Long.valueOf(dq == null ? 0L : dq.longValue())));
        }
        return dVar.dq((com.bykv.vk.openvk.preload.d.d<List<Pair<String, Long>>>) arrayList);
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        super.dq(objArr);
        this.mn = (File) objArr[0];
        this.ia = (String) objArr[1];
    }
}
