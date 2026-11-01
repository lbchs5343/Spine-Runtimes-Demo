package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;
import org.json.JSONObject;

@com.bytedance.sdk.component.no.d.d
/* loaded from: classes3.dex */
public class mp implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context f2941d;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_market_covert")
    private boolean ia;

    @com.bytedance.sdk.component.no.d.dq(dq = "convert_from_landing_page")
    private boolean iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "download_adapter")
    private com.bytedance.sdk.openadsdk.core.o.d.ox kk;

    @com.bytedance.sdk.component.no.d.dq(dq = "convert_from_downloader")
    private boolean mn;

    @com.bytedance.sdk.component.no.d.dq(dq = "pip_controller")
    private com.bytedance.sdk.openadsdk.core.video.d.d no;

    @com.bytedance.sdk.component.no.d.dq(dq = "convert_tag")
    private String o;

    @com.bytedance.sdk.component.no.d.dq(dq = "event_tag")
    private String ox;

    @com.bytedance.sdk.component.no.d.dq(dq = "deep_link")
    private JSONObject p;

    @com.bytedance.sdk.component.no.d.dq(dq = "app_info")
    private JSONObject s;

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, Map<String, Object> map2, com.bytedance.sdk.component.no.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ia iaVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ia(com.bytedance.sdk.openadsdk.core.d.d(this.s), this.f2941d);
        iaVar.dq(this.dq);
        iaVar.dq(this.ox);
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ox oxVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.ox(iaVar, this.dq, this.ox, new com.bytedance.sdk.openadsdk.core.r.fw(this.p), this.f2941d);
        oxVar.d(this.mn);
        oxVar.dq(this.iw);
        oxVar.ox(this.ia);
        oxVar.dq(this.kk);
        oxVar.dq(this.o);
        oxVar.dq(this.no);
        if (oxVar.dq(map2)) {
            dqVar.dq(map2);
            return true;
        }
        dqVar.d(map2);
        return true;
    }
}
