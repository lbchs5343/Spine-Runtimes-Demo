package com.bykv.vk.openvk.preload.geckox.s.d.d;

import android.util.Pair;
import java.io.File;

/* loaded from: classes.dex */
public class s extends com.bykv.vk.openvk.preload.d.p<Pair<File, com.bykv.vk.openvk.preload.geckox.ig.s>, Pair<String, Long>> {
    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Pair<String, Long>> dVar, Pair<File, com.bykv.vk.openvk.preload.geckox.ig.s> pair) throws Throwable {
        Pair<File, com.bykv.vk.openvk.preload.geckox.ig.s> pair2 = pair;
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start active merged zip file, channel:", ((com.bykv.vk.openvk.preload.geckox.ig.s) pair2.second).s());
        File parentFile = ((File) pair2.first).getParentFile();
        long p = ((com.bykv.vk.openvk.preload.geckox.ig.s) pair2.second).p();
        File file = new File(parentFile.getParentFile(), String.valueOf(p));
        com.bykv.vk.openvk.preload.geckox.utils.p.dq(file);
        if (parentFile.renameTo(file)) {
            return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<String, Long>>) new Pair<>(((com.bykv.vk.openvk.preload.geckox.ig.s) pair2.second).s(), Long.valueOf(p)));
        }
        throw new RuntimeException("active merged zip file failed:" + parentFile.getAbsolutePath());
    }
}
