package com.bykv.vk.openvk.preload.geckox.s.dq.dq;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.d.p;
import com.bykv.vk.openvk.preload.geckox.ig.s;
import g.awf;
import java.io.File;

/* loaded from: classes.dex */
public class d extends p<Pair<Uri, s>, Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>> {
    private File ia;
    private com.bykv.vk.openvk.preload.geckox.p mn;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.d.p
    public Object dq(com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>> dVar, Pair<Uri, s> pair) throws Throwable {
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start download full single file channel:", ((s) pair.second).s());
        s sVar = (s) pair.second;
        String uri = ((Uri) pair.first).toString();
        long ox = sVar.iw().ox();
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
        com.bykv.vk.openvk.preload.geckox.ox.dq dq = com.bykv.vk.openvk.preload.geckox.ox.dq.dq.dq(new File(file2, "res" + str + dq(sVar, uri)), ox);
        try {
            this.mn.p.dq(uri, ox, new com.bykv.vk.openvk.preload.geckox.ox.d.dq(dq));
            try {
                try {
                    Object dq2 = dVar.dq((com.bykv.vk.openvk.preload.d.d<Pair<com.bykv.vk.openvk.preload.geckox.ox.dq, s>>) new Pair<>(dq, sVar));
                    try {
                        return dq2;
                    } catch (Exception e2) {
                        return dq2;
                    }
                } catch (Exception e3) {
                    throw e3;
                }
            } finally {
                try {
                    dq.s();
                } catch (Exception e22) {
                    com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "DownloadFullSingleFile-release:", e22);
                }
            }
        } catch (Throwable th) {
            dq.s();
            StringBuilder p = awf.p("download full single file failed! url:", uri, ", channel:");
            p.append(sVar.s());
            p.append(", pkg id:");
            p.append(sVar.iw().dq());
            p.append(", caused by:");
            p.append(th.getMessage());
            throw new com.bykv.vk.openvk.preload.geckox.d.dq(p.toString(), th);
        }
    }

    public static String dq(s sVar, String str) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("url empty, channel:" + sVar.s());
        }
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf == -1) {
            throw new RuntimeException("url path illegal, url:".concat(str));
        }
        String substring = str.substring(lastIndexOf + 1);
        if (TextUtils.isEmpty(substring)) {
            throw new RuntimeException("url path illegal, url:".concat(str));
        }
        return substring;
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        super.dq(objArr);
        this.mn = (com.bykv.vk.openvk.preload.geckox.p) objArr[0];
        this.ia = (File) objArr[1];
    }
}
