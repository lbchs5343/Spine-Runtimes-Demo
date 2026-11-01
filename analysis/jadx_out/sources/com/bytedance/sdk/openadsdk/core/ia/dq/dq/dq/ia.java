package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.CountDownTimer;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.util.Map;

/* loaded from: classes3.dex */
public class ia implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    private Context f2957d;
    private com.bytedance.sdk.openadsdk.core.r.p dq;
    private j ox;
    private String p;

    public ia(com.bytedance.sdk.openadsdk.core.r.p pVar, Context context) {
        this.dq = pVar;
        this.f2957d = context;
    }

    private void d() {
        new CountDownTimer(3000L, 3000L) { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ia.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (no.ia() == null || no.ia().dq()) {
                    ia.this.dq(true);
                } else {
                    ia.this.dq(false);
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(boolean z) {
        if (z) {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, this.p, "quickapp_success");
        } else {
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, this.p, "quickapp_fail");
        }
    }

    private boolean dq() {
        com.bytedance.sdk.openadsdk.core.r.p pVar = this.dq;
        if (pVar == null) {
            return false;
        }
        String dq = pVar.dq();
        if (r.iw(this.ox) != 3 || TextUtils.isEmpty(dq)) {
            return false;
        }
        boolean d2 = d(dq);
        if (d2) {
            d();
            return d2;
        }
        dq(false);
        return d2;
    }

    public boolean d(String str) {
        if (this.f2957d == null) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            com.bytedance.sdk.component.utils.d.startActivity(this.f2957d, intent, TextUtils.equals("main", "internal"));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public void dq(j jVar) {
        this.ox = jVar;
    }

    public void dq(String str) {
        this.p = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(Map<String, Object> map) {
        return dq();
    }
}
