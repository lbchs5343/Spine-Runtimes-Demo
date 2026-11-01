package com.bykv.vk.openvk.preload.geckox.s.d.dq;

import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import com.bykv.vk.openvk.preload.geckox.utils.ia;

/* loaded from: classes.dex */
public class dq extends com.bykv.vk.openvk.preload.d.p<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>> {
    /* renamed from: dq, reason: avoid collision after fix types in other method */
    private static Object dq2(com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start check full zip file, channel:", ((s) pair.second).s());
        com.bykv.vk.openvk.preload.geckox.ox.dq dqVar = (com.bykv.vk.openvk.preload.geckox.ox.dq) pair.first;
        s sVar = (s) pair.second;
        dqVar.d(0L);
        try {
            ia.dq(new com.bykv.vk.openvk.preload.geckox.ox.d.d(dqVar), sVar.iw().d());
            return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>>) pair);
        } catch (Throwable th) {
            throw new com.bykv.vk.openvk.preload.geckox.d.d("check full zip file failed, channel:" + sVar.s() + ", pkg id:" + sVar.iw().dq() + ", caused by:" + th.getMessage(), th);
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* bridge */ /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s> pair) throws Throwable {
        return dq2(dVar, pair);
    }
}
