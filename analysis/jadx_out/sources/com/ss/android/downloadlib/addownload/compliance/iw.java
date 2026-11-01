package com.ss.android.downloadlib.addownload.compliance;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.cd;
import com.ss.android.downloadlib.addownload.no;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    private final AtomicInteger dq;

    public static class dq {
        private static iw dq = new iw();
    }

    private iw() {
        this.dq = new AtomicInteger(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        return (this.dq.get() < 3 ? "https://apps.bytesfield.com" : "https://apps.bytesfield-b.com").concat("/customer/api/app/deep_link");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final com.ss.android.downloadlib.addownload.d.s sVar, final String str, final byte[] bArr, final ia iaVar) {
        no.p().dq(str, bArr, "application/json; charset=utf-8", 0, new cd() { // from class: com.ss.android.downloadlib.addownload.compliance.iw.2
            @Override // com.ss.android.download.api.config.cd
            public void dq(String str2) {
                iw.this.dq(sVar, str2, iaVar);
            }

            @Override // com.ss.android.download.api.config.cd
            public void dq(Throwable th) {
                iw.this.dq(sVar, str, bArr, iaVar);
            }
        });
    }

    public static iw dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.ss.android.downloadlib.addownload.d.s sVar, String str, ia iaVar) {
        try {
            if (TextUtils.isEmpty(str)) {
                com.ss.android.downloadlib.s.ox.dq().dq("response content is null");
                dq(TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE, sVar);
                iaVar.dq();
                return;
            }
            this.dq.set(0);
            s mn = s.mn(str);
            if (mn.dq() != 0) {
                dq(403, sVar);
                iaVar.dq();
            } else if (!TextUtils.isEmpty(mn.d())) {
                iaVar.dq(mn.d());
            } else {
                dq(TTAdConstant.LANDING_PAGE_TYPE_CODE, sVar);
                iaVar.dq();
            }
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "DownloadMiuiMarketHelper parseResponse");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.ss.android.downloadlib.addownload.d.s sVar, String str, byte[] bArr, ia iaVar) {
        if (this.dq.get() < 6) {
            this.dq.incrementAndGet();
            d(sVar, str, bArr, iaVar);
        } else {
            dq("当前网络不佳，请稍后再试");
            this.dq.set(0);
            dq(402, sVar);
        }
    }

    private void dq(final String str) {
        com.ss.android.downloadlib.ia.dq().d().post(new Runnable() { // from class: com.ss.android.downloadlib.addownload.compliance.iw.3
            @Override // java.lang.Runnable
            public void run() {
                no.ox().dq(6, no.getContext(), null, str, null, 0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] dq(com.ss.android.downloadlib.addownload.d.s sVar, boolean z, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("download_url", sVar.dq());
            jSONObject.put("package_name", sVar.s());
            jSONObject.put("call_scene", 50);
            if (z) {
                jSONObject.put("sender_package_name", no.getContext().getPackageName());
                jSONObject.put("sender_version", no.o().s);
                if (i > 0) {
                    jSONObject.put("store", i);
                }
            } else {
                jSONObject.put(TTDownloadField.TT_ID, String.valueOf(sVar.d()));
                if (sVar.i().getDeepLink() != null) {
                    if (TextUtils.isEmpty(sVar.i().getDeepLink().getWebUrl())) {
                        com.ss.android.downloadlib.s.ox.dq().dq("web_url is null");
                    }
                    jSONObject.put("web_url", sVar.i().getDeepLink().getWebUrl());
                } else {
                    com.ss.android.downloadlib.s.ox.dq().dq("deeplink is null");
                }
            }
        } catch (Exception unused) {
            com.ss.android.downloadlib.s.ox.dq().dq("param build error");
        }
        return jSONObject.toString().getBytes();
    }

    public void dq(int i, com.ss.android.downloadlib.addownload.d.s sVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_miui_market_fail_code", Integer.valueOf(i));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("get_miui_market_compliance_error", jSONObject, sVar);
    }

    public void dq(int i, com.ss.android.downloadlib.addownload.d.s sVar, JSONObject jSONObject) {
        try {
            jSONObject.putOpt("download_miui_market_success_result", Integer.valueOf(i));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("get_miui_market_compliance_success", jSONObject, sVar);
    }

    public void dq(final com.ss.android.downloadlib.addownload.d.s sVar, final ia iaVar) {
        if (no.p() != null) {
            com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.addownload.compliance.iw.1
                @Override // java.lang.Runnable
                public void run() {
                    iw iwVar = iw.this;
                    iwVar.d(sVar, iwVar.d(), iw.this.dq(sVar, true, 4), iaVar);
                }
            });
        } else {
            com.ss.android.downloadlib.s.ox.dq().dq("getDownloadNetworkFactory == NULL");
            dq(401, sVar);
        }
    }
}
