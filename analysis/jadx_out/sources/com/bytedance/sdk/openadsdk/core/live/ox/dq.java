package com.bytedance.sdk.openadsdk.core.live.ox;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.core.ig.iw;
import com.bytedance.sdk.openadsdk.core.ig.ox;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class dq {
    private String dq = "";

    public dq dq(String str) {
        this.dq = str;
        return this;
    }

    public void dq(final Context context, final j jVar) {
        if (jVar == null || jVar.kf() == null || TextUtils.isEmpty(jVar.kf().dq())) {
            return;
        }
        le.iw().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.live.ox.dq.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(jVar.kf().dq()));
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    if (com.bytedance.sdk.component.utils.d.dq(context, intent, null, TextUtils.equals("main", "internal"))) {
                        ox.p(jVar, dq.this.dq, "deeplink_success_realtime");
                    } else {
                        ox.p(jVar, dq.this.dq, "deeplink_fail_realtime");
                    }
                    ox.ia(jVar, dq.this.dq, "open_url_app", null);
                    iw.dq().dq(jVar, dq.this.dq, false);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }, 50L);
    }
}
