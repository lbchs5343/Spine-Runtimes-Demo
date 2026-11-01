package com.bytedance.sdk.openadsdk.core.component.splash;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.ds;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk {
    public static boolean d(com.bytedance.sdk.openadsdk.core.r.dq dqVar) {
        return (dqVar == null || dqVar.d() == null || dqVar.d().isEmpty() || dqVar.d().get(0) == null) ? false : true;
    }

    public static boolean d(j jVar) {
        if (jVar == null || jVar.dc() == 1 || pa.q(jVar) == null || TextUtils.isEmpty(pa.dq(jVar))) {
            return true;
        }
        jVar.mn(true);
        return false;
    }

    public static int dq(ds dsVar) {
        if (dsVar == null) {
            return 0;
        }
        int ox = ox(dsVar.d());
        return ox <= 0 ? dq(dsVar.dq()) : ox;
    }

    public static int dq(j jVar) {
        if (jVar != null) {
            return c.kk(jVar);
        }
        return 0;
    }

    public static String dq(int i) {
        return com.bytedance.sdk.openadsdk.h.kk.dq(i).ox();
    }

    public static void dq(long j, boolean z, boolean z2, j jVar, long j2, String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        String str2 = z ? z2 ? "load_video_success" : "load_video_error" : z2 ? "download_video_image_success" : "download_video_image_fail";
        if (z) {
            Map<String, Object> dq = c.dq(z2, jVar, elapsedRealtime, j2, str);
            dq.put("splash_show_type", 1);
            com.bytedance.sdk.openadsdk.core.ig.ox.s(jVar, "splash_ad", str2, dq);
        } else {
            Map<String, Object> d2 = c.d(z2, jVar, elapsedRealtime, j2, str);
            d2.put("splash_show_type", 2);
            com.bytedance.sdk.openadsdk.core.ig.ox.p(jVar, "splash_ad", str2, d2);
        }
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar) {
        if (d(dqVar)) {
            j jVar = dqVar.d().get(0);
            int kk = c.kk(jVar);
            com.bykv.vk.openvk.component.video.api.ox.ox q = pa.q(jVar);
            if (q != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                String ig = q.ig();
                if (TextUtils.isEmpty(ig)) {
                    dq(elapsedRealtime, true, false, jVar, -1L, "preLoadVideo videoUrl is null");
                    return;
                }
                if (TextUtils.isEmpty(q.jy())) {
                    com.bytedance.sdk.component.utils.s.d(ig);
                }
                com.bykv.vk.openvk.component.video.api.ox.p dq = jVar.jc() ? pa.dq(2, jVar) : pa.dq(3, jVar);
                dq.dq("material_meta", jVar);
                if (!wp.d().ia(String.valueOf(kk)) || q.p(wp.getContext())) {
                    q.s(0);
                    com.bykv.vk.openvk.component.video.dq.dq.dq();
                    com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq, new com.bykv.vk.openvk.component.video.api.s.d() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.kk.2
                        @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
                        public void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar, int i) {
                        }

                        @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
                        public void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar, int i, String str) {
                        }
                    });
                }
            }
        }
    }

    public static void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final boolean z, final long j, final long j2) {
        ig.dq().mn(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.kk.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                int i = z ? 2 : 1;
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("available_type", Integer.valueOf(i));
                jSONObject.putOpt("creative_check_duration", Long.valueOf(j2));
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(4).ox(dVar.mn()).d((int) j).d(jSONObject.toString());
            }
        });
    }

    public static int ox(com.bytedance.sdk.openadsdk.core.r.dq dqVar) {
        if (dqVar != null) {
            return dqVar.dq();
        }
        return 0;
    }
}
