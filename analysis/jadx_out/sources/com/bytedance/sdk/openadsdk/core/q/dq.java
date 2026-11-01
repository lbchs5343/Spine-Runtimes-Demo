package com.bytedance.sdk.openadsdk.core.q;

import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.jy;
import com.bytedance.sdk.component.d.dq.o;
import com.bytedance.sdk.component.d.dq.q;
import java.io.BufferedInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class dq implements com.bykv.vk.openvk.preload.geckox.mp.dq {

    /* renamed from: d, reason: collision with root package name */
    protected ig f3412d;
    protected ig dq;

    public dq() {
        ig.dq dqVar = new ig.dq();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.dq = dqVar.dq(10L, timeUnit).d(10L, timeUnit).ox(10L, timeUnit).dq();
        this.f3412d = new ig.dq().dq(10L, timeUnit).d(30L, timeUnit).ox(30L, timeUnit).dq();
    }

    private Map<String, String> dq(iw iwVar) {
        if (iwVar == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < iwVar.dq(); i++) {
            hashMap.put(iwVar.dq(i), iwVar.d(i));
        }
        return hashMap;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.mp.dq
    public com.bykv.vk.openvk.preload.geckox.mp.d dq(String str, String str2) throws Exception {
        f dq = this.dq.dq(new q.dq().dq(str).dq(jy.dq(o.dq("application/json; charset=utf-8"), str2)).d()).dq();
        return new com.bykv.vk.openvk.preload.geckox.mp.d(dq(dq.mn()), dq.ox() == 200 ? dq.iw().d() : null, dq.ox(), dq.s());
    }

    @Override // com.bykv.vk.openvk.preload.geckox.mp.dq
    public void dq(String str, long j, com.bykv.vk.openvk.preload.geckox.ox.d.dq dqVar) throws Exception {
        BufferedInputStream bufferedInputStream;
        Exception e2;
        int ox;
        BufferedInputStream bufferedInputStream2 = null;
        int i = 0;
        try {
            try {
                f dq = this.f3412d.dq(new q.dq().dq().dq(str).d()).dq();
                ox = dq.ox();
                try {
                    bufferedInputStream = new BufferedInputStream(dq.iw().ox());
                } catch (Exception e3) {
                    bufferedInputStream = null;
                    e2 = e3;
                }
            } catch (Exception e4) {
                bufferedInputStream = null;
                e2 = e4;
            }
        } catch (Throwable th) {
            th = th;
            com.bykv.vk.openvk.preload.geckox.utils.dq.dq(bufferedInputStream2);
            throw th;
        }
        try {
            try {
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 2048);
                    if (read == -1) {
                        com.bykv.vk.openvk.preload.geckox.utils.dq.dq(bufferedInputStream);
                        return;
                    }
                    dqVar.write(bArr, 0, read);
                }
            } catch (Exception e5) {
                e2 = e5;
                i = ox;
                throw new RuntimeException("downloadFile failed, code: " + i + ", url:" + str + ", caused by:" + e2.getMessage(), e2);
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            com.bykv.vk.openvk.preload.geckox.utils.dq.dq(bufferedInputStream2);
            throw th;
        }
    }
}
