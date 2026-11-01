package com.bykv.vk.openvk.preload.geckox.s.dq.d;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.utils.BsPatch;
import g.awf;
import java.io.File;

/* loaded from: classes.dex */
public class p extends com.bykv.vk.openvk.preload.d.p<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>> {
    private com.bykv.vk.openvk.preload.geckox.p mn;

    /* renamed from: dq, reason: avoid collision after fix types in other method */
    private static Object dq2(com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start merge patch single file, channel:", ((com.bykv.vk.openvk.preload.geckox.ig.s) pair.second).s());
        com.bykv.vk.openvk.preload.geckox.ox.dq dqVar = (com.bykv.vk.openvk.preload.geckox.ox.dq) pair.first;
        File iw = dqVar.iw();
        dqVar.dq();
        dqVar.s();
        File parentFile = iw.getParentFile().getParentFile();
        com.bykv.vk.openvk.preload.geckox.ig.s sVar = (com.bykv.vk.openvk.preload.geckox.ig.s) pair.second;
        StringBuilder sb = new StringBuilder();
        sb.append(sVar.ox());
        String str = File.separator;
        File file = new File(parentFile, awf.ad(sb, str, "res"));
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            throw new RuntimeException("can not found old full single file,:" + file.getAbsolutePath());
        }
        File file2 = listFiles[0];
        File file3 = new File(iw.getParentFile(), "res" + str + com.bykv.vk.openvk.preload.geckox.s.dq.dq.d.dq(sVar, sVar.iw().p().get(0)));
        com.bykv.vk.openvk.preload.geckox.utils.p.dq(file3);
        try {
            try {
                BsPatch.dq(file2, iw, file3.getParentFile(), file3.getName());
                com.bykv.vk.openvk.preload.geckox.utils.p.dq(iw);
                com.bykv.vk.openvk.preload.geckox.ox.dq dq = com.bykv.vk.openvk.preload.geckox.ox.dq.dq.dq(file3, file3.length());
                try {
                    return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>>) new Pair<>(dq, sVar));
                } finally {
                    dq.s();
                }
            } catch (Exception e2) {
                throw new RuntimeException("merge patch single file failed, channel：" + sVar.s() + ", pkg id:" + sVar.mn().dq() + ", caused by:" + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.preload.geckox.utils.p.dq(iw);
            throw th;
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* bridge */ /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s> pair) throws Throwable {
        return dq2(dVar, pair);
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        super.dq(objArr);
        this.mn = (com.bykv.vk.openvk.preload.geckox.p) objArr[0];
    }
}
