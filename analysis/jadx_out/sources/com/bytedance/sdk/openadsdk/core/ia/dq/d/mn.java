package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class mn implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context f2940d;

    @com.bytedance.sdk.component.no.d.dq(dq = "convert_from_landing_page")
    protected boolean dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "start_download_listener")
    private com.bytedance.sdk.openadsdk.core.o.ox.dq.d ia;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_direct_download")
    private boolean ig;

    @com.bytedance.sdk.component.no.d.dq(dq = "event_tag")
    private String iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_show_download_dialog")
    private boolean kk = true;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_url")
    private String mn;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_dialog_listener")
    private com.bytedance.sdk.openadsdk.core.o.ox.dq.dq mp;

    @com.bytedance.sdk.component.no.d.dq(dq = "dynamic_download_dialog_type")
    private int no;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_from_new_click_event")
    private boolean o;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j ox;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_app_market_convert")
    private boolean p;

    @com.bytedance.sdk.component.no.d.dq(dq = "app_manage_model")
    private com.bytedance.sdk.openadsdk.core.r.ox s;

    private com.bytedance.sdk.openadsdk.core.o.ox.ox.dq dq() {
        return this.p ? new com.bytedance.sdk.openadsdk.core.o.ox.ox.s() : this.dq ? new com.bytedance.sdk.openadsdk.core.o.ox.ox.p() : new com.bytedance.sdk.openadsdk.core.o.ox.ox.d();
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.o.ox.ox.ox oxVar = new com.bytedance.sdk.openadsdk.core.o.ox.ox.ox(this.f2940d, this.ox);
        oxVar.ox(this.ig);
        oxVar.dq(this.kk);
        oxVar.dq(this.no);
        oxVar.d(this.o);
        oxVar.dq(this.mp);
        oxVar.dq(dq());
        if (!oxVar.p(false)) {
            dqVar.d(map2);
            return true;
        }
        oxVar.dq(this.s, this.iw, this.mn, this.ia);
        dqVar.dq(map2);
        return true;
    }
}
