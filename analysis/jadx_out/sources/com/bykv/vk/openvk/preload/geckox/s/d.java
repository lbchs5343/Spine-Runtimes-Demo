package com.bykv.vk.openvk.preload.geckox.s;

import com.bykv.vk.openvk.preload.d.o;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import java.util.List;

/* loaded from: classes.dex */
public class d extends o<com.bykv.vk.openvk.preload.geckox.ig.s, com.bykv.vk.openvk.preload.geckox.ig.s> {
    @Override // com.bykv.vk.openvk.preload.d.o
    public final /* synthetic */ String dq(com.bykv.vk.openvk.preload.geckox.ig.s sVar) {
        com.bykv.vk.openvk.preload.geckox.ig.s sVar2 = sVar;
        s.d mn = sVar2.mn();
        if (mn == null) {
            com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start full update, channel:", sVar2.s());
            return "full";
        }
        List<String> p = mn.p();
        if (p == null || p.isEmpty()) {
            com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start full update, channel:", sVar2.s());
            return "full";
        }
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start full update, channel:", sVar2.s());
        return "patch";
    }

    @Override // com.bykv.vk.openvk.preload.d.o
    public final /* synthetic */ String dq(com.bykv.vk.openvk.preload.geckox.ig.s sVar, Throwable th, String str) {
        com.bykv.vk.openvk.preload.geckox.ig.s sVar2 = sVar;
        if ("patch".equals(str)) {
            com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start full update, channel:", sVar2.s());
            return "full";
        }
        throw new RuntimeException("full update failed, caused by:" + th.getMessage(), th);
    }
}
