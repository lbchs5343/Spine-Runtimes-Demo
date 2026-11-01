package com.bykv.vk.openvk.preload.geckox.s.d.d;

import android.net.Uri;
import android.util.Pair;
import g.awf;
import java.io.File;

/* loaded from: classes.dex */
public class ox extends com.bykv.vk.openvk.preload.d.p<Pair<Uri, com.bykv.vk.openvk.preload.geckox.ig.s>, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>> {
    private File ia;
    private com.bykv.vk.openvk.preload.geckox.p mn;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.d.p
    public Object dq(com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>> dVar, Pair<Uri, com.bykv.vk.openvk.preload.geckox.ig.s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start download patch zip file, channel:", ((com.bykv.vk.openvk.preload.geckox.ig.s) pair.second).s());
        com.bykv.vk.openvk.preload.geckox.ig.s sVar = (com.bykv.vk.openvk.preload.geckox.ig.s) pair.second;
        String uri = ((Uri) pair.first).toString();
        long ox = sVar.mn().ox();
        File file = this.ia;
        StringBuilder sb = new StringBuilder();
        sb.append(sVar.dq());
        String str = File.separator;
        sb.append(str);
        sb.append(sVar.s());
        sb.append(str);
        sb.append(sVar.p());
        sb.append("--updating");
        File file2 = new File(file, sb.toString());
        file2.mkdirs();
        com.bykv.vk.openvk.preload.geckox.ox.dq dq = com.bykv.vk.openvk.preload.geckox.ox.dq.dq.dq(new File(file2, "patch.tmp"), ox);
        try {
            this.mn.p.dq(uri, ox, new com.bykv.vk.openvk.preload.geckox.ox.d.dq(dq));
            try {
                return dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, com.bykv.vk.openvk.preload.geckox.ig.s>>) new Pair<>(dq, sVar));
            } finally {
                dq.s();
            }
        } catch (Throwable th) {
            dq.s();
            StringBuilder p = awf.p("download patch zip failed, url:", uri, ", channel:");
            p.append(sVar.s());
            p.append(", pkg id:");
            p.append(sVar.mn().dq());
            p.append(", caused by:");
            p.append(th.getMessage());
            throw new com.bykv.vk.openvk.preload.geckox.d.dq(p.toString(), th);
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        super.dq(objArr);
        this.mn = (com.bykv.vk.openvk.preload.geckox.p) objArr[0];
        this.ia = (File) objArr[1];
    }
}
