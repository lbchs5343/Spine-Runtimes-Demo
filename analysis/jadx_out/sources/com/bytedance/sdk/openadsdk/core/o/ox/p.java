package com.bytedance.sdk.openadsdk.core.o.ox;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.core.activity.base.TTMiddlePageActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class p extends o {
    public p(Context context, j jVar, String str, boolean z) {
        super(context, jVar, str, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public boolean p() {
        if (this.s.kf() == null) {
            return false;
        }
        String dq = this.s.kf().dq();
        if (!TextUtils.isEmpty(dq)) {
            fw.dq((String) null);
            Uri parse = Uri.parse(dq);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            if (this.fw) {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.s, this.iw, "lp_open_dpl", dq(dq));
            }
            try {
                Context context = getContext();
                if (!(context instanceof Activity)) {
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                }
                if (!dq(this.iw, "open_url_app", this.s)) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.s, this.iw, "open_url_app", null);
                }
                c.dq(this.fw, TTMiddlePageActivity.dq(this.s), this.s, this.iw);
                com.bytedance.sdk.component.utils.d.startActivity(context, intent, TextUtils.equals("main", "internal"));
                com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(this.s, this.iw, this.fw);
                if (this.fw) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.s, this.iw, "lp_openurl");
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(this.s, this.iw, "lp_deeplink_success_realtime");
                } else {
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(this.s, this.iw, "deeplink_success_realtime");
                }
                return true;
            } catch (Throwable unused) {
                com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.s, this.iw, "open_fallback_download");
                if (this.fw) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.s, this.iw, "lp_openurl_failed");
                    dq(this.s, this.iw, "lp_deeplink_fail_realtime");
                } else {
                    dq(this.s, this.iw, "deeplink_fail_realtime");
                }
            }
        }
        if (this.mn.get() == 4 || this.mn.get() == 3) {
            return false;
        }
        if (this.kk && !this.ia.get()) {
            return false;
        }
        this.kk = true;
        if (dq(this.iw, "open_fallback_url", this.s)) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.s, this.iw, "open_fallback_url", null);
        return false;
    }
}
