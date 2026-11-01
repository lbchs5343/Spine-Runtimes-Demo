package com.bykv.vk.openvk.preload.geckox.s;

import android.net.Uri;
import android.util.Pair;
import com.bykv.vk.openvk.preload.d.no;
import java.util.List;

/* loaded from: classes.dex */
public class ia extends no<com.bykv.vk.openvk.preload.geckox.ig.s, Pair<Uri, com.bykv.vk.openvk.preload.geckox.ig.s>> {
    private int ia = 0;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.d.no
    public final boolean d(Throwable th) {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "patch update failed", th);
        if (this.ia >= ((com.bykv.vk.openvk.preload.geckox.ig.s) this.mn).mn().p().size()) {
            return false;
        }
        return (th instanceof com.bykv.vk.openvk.preload.geckox.d.dq) || (th instanceof com.bykv.vk.openvk.preload.geckox.d.d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.d.no
    public final /* synthetic */ Pair<Uri, com.bykv.vk.openvk.preload.geckox.ig.s> dq() {
        com.bykv.vk.openvk.preload.geckox.ig.s sVar = (com.bykv.vk.openvk.preload.geckox.ig.s) this.mn;
        List<String> p = sVar.mn().p();
        int i = this.ia;
        this.ia = i + 1;
        return new Pair<>(Uri.parse(p.get(i)), sVar);
    }
}
