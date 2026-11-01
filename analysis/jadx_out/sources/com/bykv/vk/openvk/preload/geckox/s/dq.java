package com.bykv.vk.openvk.preload.geckox.s;

/* loaded from: classes.dex */
public class dq extends com.bykv.vk.openvk.preload.d.dq<com.bykv.vk.openvk.preload.geckox.ig.s, com.bykv.vk.openvk.preload.geckox.ig.s> {
    @Override // com.bykv.vk.openvk.preload.d.dq
    public final /* synthetic */ String dq(com.bykv.vk.openvk.preload.geckox.ig.s sVar) {
        int ia = sVar.ia();
        if (ia == 0) {
            return "branch_zip";
        }
        if (ia == 1) {
            return "branch_single_file";
        }
        throw new RuntimeException("unknow file type: ".concat(String.valueOf(ia)));
    }
}
