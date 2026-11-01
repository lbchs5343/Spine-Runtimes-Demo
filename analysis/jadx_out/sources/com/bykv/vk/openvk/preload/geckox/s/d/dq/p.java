package com.bykv.vk.openvk.preload.geckox.s.d.dq;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import com.bykv.vk.openvk.preload.geckox.utils.ig;
import java.io.File;

/* loaded from: classes.dex */
public class p extends com.bykv.vk.openvk.preload.d.p<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>, Pair<File, s>> {
    /* renamed from: dq, reason: avoid collision after fix types in other method */
    private static Object dq2(com.bykv.vk.openvk.preload.d.d<Pair<File, s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start unzip full zip file, channel:", ((s) pair.second).s());
        com.bykv.vk.openvk.preload.geckox.ox.dq dqVar = (com.bykv.vk.openvk.preload.geckox.ox.dq) pair.first;
        dqVar.d(0L);
        s sVar = (s) pair.second;
        File parentFile = dqVar.iw().getParentFile();
        try {
            ig.dq(new com.bykv.vk.openvk.preload.geckox.ox.d.d(dqVar), parentFile.getAbsolutePath(), sVar.s());
            dqVar.dq();
            File file = new File(parentFile, "res");
            com.bykv.vk.openvk.preload.geckox.utils.p.dq(file);
            if (new File(parentFile, sVar.s()).renameTo(file)) {
                return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<File, s>>) new Pair<>(dqVar.iw(), sVar));
            }
            throw new RuntimeException("rename unziped full zip file failed:" + parentFile.getAbsolutePath() + ", dest:" + file.getAbsolutePath() + ", exist?" + file.exists());
        } catch (Exception e2) {
            throw new RuntimeException("unzip full zip file failed, channel:" + sVar.s() + ", pkg id:" + sVar.iw().dq() + ", dir:" + parentFile.getAbsolutePath() + ", caused by:" + e2.getMessage(), e2);
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* bridge */ /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Pair<File, s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s> pair) throws Throwable {
        return dq2(dVar, pair);
    }
}
