package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class iw implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    protected Context f2936d;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    protected j dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_open_oppo_market_auto_download")
    private volatile boolean ia;

    @com.bytedance.sdk.component.no.d.dq(dq = "pip_controller")
    private com.bytedance.sdk.openadsdk.core.video.d.d ig;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_popup_manager")
    protected com.bytedance.sdk.openadsdk.core.o.ox.ox.ox iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_click_button")
    private volatile boolean kk;

    @com.bytedance.sdk.component.no.d.dq(dq = "dialog_to_landing_page_convert")
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq no;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_url")
    private String o;

    @com.bytedance.sdk.component.no.d.dq(dq = "event_tag")
    protected String p;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_status_listener")
    protected DownloadStatusChangeListener s;

    @com.bytedance.sdk.component.no.d.dq(dq = "convert_from_landing_page")
    protected volatile boolean ox = false;

    @com.bytedance.sdk.component.no.d.dq(dq = "need_check_compliance")
    private int mn = 0;

    private boolean dq() {
        return (this.dq == null || this.f2936d == null || TextUtils.isEmpty(this.o) || TextUtils.isEmpty(this.p) || this.iw == null) ? false : true;
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (!dq()) {
            dqVar.d(map2);
            return true;
        }
        int ox = com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.ox(map2);
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.p pVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.p(this.dq, this.f2936d, this.p, this.iw, this.o);
        pVar.d(this.kk);
        pVar.dq(this.ia, ox);
        pVar.dq(this.s);
        pVar.dq(this.ox);
        pVar.dq(this.mn);
        pVar.dq(this.no);
        if (new com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.d(pVar, this.ig).dq(map2)) {
            dqVar.dq(map2);
        } else {
            dqVar.d(map2);
        }
        return true;
    }
}
