package com.bykv.vk.openvk.preload.geckox.s.dq.dq;

import android.util.Pair;
import com.bykv.vk.openvk.preload.d.p;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import com.bykv.vk.openvk.preload.geckox.utils.ia;
import java.io.File;

/* loaded from: classes.dex */
public class dq extends p<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>, Pair<File, s>> {
    /* renamed from: dq, reason: avoid collision after fix types in other method */
    private static Object dq2(com.bykv.vk.openvk.preload.d.d<Pair<File, s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start check full single file channel:", ((s) pair.second).s());
        com.bykv.vk.openvk.preload.geckox.ox.dq dqVar = (com.bykv.vk.openvk.preload.geckox.ox.dq) pair.first;
        s sVar = (s) pair.second;
        dqVar.d(0L);
        try {
            ia.dq(new com.bykv.vk.openvk.preload.geckox.ox.d.d(dqVar), sVar.iw().d());
            dqVar.dq();
            return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<File, s>>) new Pair<>(dqVar.iw(), sVar));
        } catch (Throwable th) {
            throw new com.bykv.vk.openvk.preload.geckox.d.d("check full single file failed, channel:" + sVar.s() + ", pkg id:" + sVar.iw().dq() + ", caused by:" + th.getMessage(), th);
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final /* bridge */ /* synthetic */ Object dq(com.bykv.vk.openvk.preload.d.d<Pair<File, s>> dVar, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s> pair) throws Throwable {
        return dq2(dVar, pair);
    }
}
