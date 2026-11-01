package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wp;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.downloadad.api.download.AdDownloadController;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class ig implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    protected Context f2934d;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    protected j dq;

    /* renamed from: f, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "pip_controller")
    private com.bytedance.sdk.openadsdk.core.video.d.d f2935f;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_open_oppo_market_auto_download")
    private volatile boolean ia;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_controller")
    private AdDownloadController ig;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_popup_manager")
    protected com.bytedance.sdk.openadsdk.core.o.ox.ox.ox iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "app_info")
    private JSONObject jy;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_click_button")
    private volatile boolean kk;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_model")
    private DownloadModel mp;

    @com.bytedance.sdk.component.no.d.dq(dq = "dialog_to_landing_page_convert")
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq no;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_url")
    private String o;

    @com.bytedance.sdk.component.no.d.dq(dq = "event_tag")
    protected String p;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_conf")
    private String q;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_status_listener")
    protected DownloadStatusChangeListener s;

    @com.bytedance.sdk.component.no.d.dq(dq = "convert_from_landing_page")
    protected volatile boolean ox = false;

    @com.bytedance.sdk.component.no.d.dq(dq = "need_check_compliance")
    private int mn = 0;

    private boolean dq() {
        if (this.dq == null || this.f2934d == null) {
            return false;
        }
        if (!TextUtils.isEmpty(this.o)) {
            return (TextUtils.isEmpty(this.p) || this.iw == null || this.ig == null || this.mp == null) ? false : true;
        }
        com.bytedance.sdk.openadsdk.core.r.p d2 = com.bytedance.sdk.openadsdk.core.d.d(this.jy);
        if (d2 != null) {
            this.o = d2.d();
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (this.f2934d == null) {
            this.f2934d = wp.getContext();
        }
        if (!dq()) {
            dqVar.d(map2);
            return true;
        }
        int ox = com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.ox(map2);
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.mn mnVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.mn(this.dq, this.f2934d, this.p, this.iw, this.o, this.ig, this.mp);
        mnVar.d(this.kk);
        mnVar.dq(this.ia, ox);
        mnVar.dq(this.s);
        mnVar.dq(this.ox);
        mnVar.dq(this.mn);
        mnVar.dq(this.no);
        try {
            if (!TextUtils.isEmpty(this.q)) {
                mnVar.dq(new r(new JSONObject(this.q)));
            }
        } catch (JSONException unused) {
        }
        if (new com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.d(mnVar, this.f2935f).dq(map2)) {
            dqVar.dq(map2);
        } else {
            dqVar.d(map2);
        }
        return true;
    }
}
