package com.bykv.vk.openvk.preload.geckox.s.d.d;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.utils.BsPatch;
import g.awf;
import java.io.File;

/* loaded from: classes.dex */
public class p extends com.bykv.vk.openvk.preload.d.p<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>> {
    private com.bykv.vk.openvk.preload.geckox.p mn;

    /* renamed from: dq, reason: avoid collision after fix types in other method */
    private static Object dq2(com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start merge patch zip file, channel:", ((com.bykv.vk.openvk.preload.geckox.ig.s) pair.second).s());
        com.bykv.vk.openvk.preload.geckox.ox.dq dqVar = (com.bykv.vk.openvk.preload.geckox.ox.dq) pair.first;
        File iw = dqVar.iw();
        dqVar.dq();
        dqVar.s();
        File parentFile = iw.getParentFile().getParentFile();
        com.bykv.vk.openvk.preload.geckox.ig.s sVar = (com.bykv.vk.openvk.preload.geckox.ig.s) pair.second;
        StringBuilder sb = new StringBuilder();
        sb.append(sVar.ox());
        File file = new File(parentFile, awf.ad(sb, File.separator, "res.zip"));
        File file2 = new File(iw.getParentFile(), "res.zip");
        com.bykv.vk.openvk.preload.geckox.utils.p.dq(file2);
        try {
            try {
                BsPatch.dq(file, iw, file2.getParentFile(), file2.getName());
                com.bykv.vk.openvk.preload.geckox.utils.p.dq(iw);
                com.bykv.vk.openvk.preload.geckox.ox.dq dq = com.bykv.vk.openvk.preload.geckox.ox.dq.dq.dq(file2, file2.length());
                try {
                    return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>>) new Pair<>(dq, sVar));
                } finally {
                    dq.s();
                }
            } catch (Exception e2) {
                throw new RuntimeException("merged patch zip file failed, channel：" + sVar.s() + ", pkg id:" + sVar.mn().dq() + ", caused by:" + e2.getMessage(), e2);
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
