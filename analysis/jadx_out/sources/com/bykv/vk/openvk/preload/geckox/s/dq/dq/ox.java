package com.bykv.vk.openvk.preload.geckox.s.dq.dq;

import android.util.Pair;
import com.bykv.vk.openvk.preload.d.p;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import java.io.File;

/* loaded from: classes.dex */
public class ox extends p<Pair<File, s>, Pair<String, Long>> {
    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Pair<String, Long>> dVar, Pair<File, s> pair) throws Throwable {
        Pair<File, s> pair2 = pair;
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start active full single file, channel:", ((s) pair2.second).s());
        File parentFile = ((File) pair2.first).getParentFile().getParentFile();
        long p = ((s) pair2.second).p();
        File file = new File(parentFile.getParentFile(), String.valueOf(p));
        com.bykv.vk.openvk.preload.geckox.utils.p.dq(file);
        if (parentFile.renameTo(file)) {
            return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<String, Long>>) new Pair<>(((s) pair2.second).s(), Long.valueOf(p)));
        }
        throw new RuntimeException("active full single file failed: " + parentFile.getAbsolutePath());
    }
}
