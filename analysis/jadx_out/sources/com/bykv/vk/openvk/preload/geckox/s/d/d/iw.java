package com.bykv.vk.openvk.preload.geckox.s.d.d;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.utils.ig;
import java.io.File;

/* loaded from: classes.dex */
public class iw extends com.bykv.vk.openvk.preload.d.p<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>, Pair<File, com.bykv.vk.openvk.preload.geckox.ig.s>> {
    /* renamed from: dq, reason: avoid collision after fix types in other method */
    private static Object dq2(com.bykv.vk.openvk.preload.d.d<Pair<File, com.bykv.vk.openvk.preload.geckox.ig.s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start unzip merged zip file, channel:", ((com.bykv.vk.openvk.preload.geckox.ig.s) pair.second).s());
        com.bykv.vk.openvk.preload.geckox.ox.dq dqVar = (com.bykv.vk.openvk.preload.geckox.ox.dq) pair.first;
        com.bykv.vk.openvk.preload.geckox.ig.s sVar = (com.bykv.vk.openvk.preload.geckox.ig.s) pair.second;
        dqVar.d(0L);
        File parentFile = dqVar.iw().getParentFile();
        try {
            ig.dq(new com.bykv.vk.openvk.preload.geckox.ox.d.d(dqVar), parentFile.getAbsolutePath(), sVar.s());
            dqVar.dq();
            File file = new File(parentFile, "res");
            com.bykv.vk.openvk.preload.geckox.utils.p.dq(file);
            if (new File(parentFile, sVar.s()).renameTo(file)) {
                return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<File, com.bykv.vk.openvk.preload.geckox.ig.s>>) new Pair<>(dqVar.iw(), sVar));
            }
            throw new RuntimeException("rename unzip merged zip file failed:" + parentFile.getAbsolutePath());
        } catch (Exception e2) {
            throw new RuntimeException("unzip merged zip file failed, channel:" + sVar.s() + ", pkg id:" + sVar.mn().dq() + e2.getMessage(), e2);
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* bridge */ /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Pair<File, com.bykv.vk.openvk.preload.geckox.ig.s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s> pair) throws Throwable {
        return dq2(dVar, pair);
    }
}
