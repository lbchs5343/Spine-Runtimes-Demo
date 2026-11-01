package com.bytedance.sdk.openadsdk.core.component.reward.dq.dq;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.kk.d.p;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.le.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.h.kk;
import g.awf;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    private static final Map<j, Long> dq = awf.ab();

    /* renamed from: com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0145dq<T> {
        void dq(boolean z, T t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(boolean z, boolean z2, j jVar, long j, String str) {
        Long remove = dq.remove(jVar);
        long elapsedRealtime = remove == null ? 0L : SystemClock.elapsedRealtime() - remove.longValue();
        String str2 = z2 ? "load_video_success" : "load_video_error";
        if (z2 || str == null) {
            str = null;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.s(jVar, z ? "rewarded_video" : "fullscreen_interstitial_ad", str2, c.dq(z2, jVar, elapsedRealtime, j, str));
    }

    private static File dq(String str, int i) {
        return new File(kk.dq(i).dq(), str);
    }

    public static void dq(final boolean z, final j jVar, final InterfaceC0145dq<Object> interfaceC0145dq) {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            return;
        }
        dq.put(jVar, Long.valueOf(SystemClock.elapsedRealtime()));
        if (!TextUtils.isEmpty(pa.dq(jVar))) {
            if (interfaceC0145dq != null) {
                interfaceC0145dq.dq(false, null);
            }
            d(z, false, jVar, -1L, " meta == null or meta.getVideo() == null ");
        } else {
            String dq2 = pa.dq(jVar);
            File dq3 = dq(pa.mn(jVar), jVar.mx());
            com.bytedance.sdk.component.kk.d.d p = s.dq().d().p();
            p.dq(dq2);
            p.dq(dq3.getParent(), dq3.getName());
            p.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.dq.1
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    if (dVar.ia() && dVar.mn() != null && dVar.mn().exists()) {
                        InterfaceC0145dq interfaceC0145dq2 = InterfaceC0145dq.this;
                        if (interfaceC0145dq2 != null) {
                            interfaceC0145dq2.dq(true, null);
                        }
                        ig.dq("MetaResourceCacheManager", "onResponse: RewardFullVideo preload success ");
                        dq.d(z, true, jVar, dVar.dq(), dVar.d());
                        return;
                    }
                    InterfaceC0145dq interfaceC0145dq3 = InterfaceC0145dq.this;
                    if (interfaceC0145dq3 != null) {
                        interfaceC0145dq3.dq(false, null);
                    }
                    ig.dq("MetaResourceCacheManager", "onResponse: RewardFullVideo preload fail ");
                    dq.d(z, false, jVar, dVar.dq(), dVar.d());
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(p pVar, IOException iOException) {
                    InterfaceC0145dq interfaceC0145dq2 = InterfaceC0145dq.this;
                    if (interfaceC0145dq2 != null) {
                        interfaceC0145dq2.dq(false, null);
                    }
                    ig.dq("MetaResourceCacheManager", "onFailure: RewardFullVideo preload fail ");
                    dq.d(z, false, jVar, -2L, iOException.getMessage());
                }
            });
        }
    }
}
