package com.bykv.vk.openvk.preload.geckox.dq.dq;

import java.io.File;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class s extends d {
    @Override // com.bykv.vk.openvk.preload.geckox.dq.dq.d
    public final void dq() {
        Iterator<String> it = this.iw.iterator();
        while (it.hasNext()) {
            List<File> d2 = com.bykv.vk.openvk.preload.geckox.utils.p.d(new File(this.s, it.next()));
            if (d2 != null && d2.size() > this.p.dq) {
                for (File file : d2.subList(0, d2.size() - this.p.dq)) {
                    com.bykv.vk.openvk.preload.geckox.dq.ox.d(file.getAbsolutePath());
                    if (this.p.ox != null) {
                        file.getName();
                    }
                }
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.dq.dq.d
    public final void dq(dq dqVar, File file, List<String> list) {
        super.dq(dqVar, file, list);
    }
}
