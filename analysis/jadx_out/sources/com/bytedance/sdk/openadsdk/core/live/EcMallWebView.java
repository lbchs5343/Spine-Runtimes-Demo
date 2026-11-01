package com.bytedance.sdk.openadsdk.core.live;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.fw.s;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.widget.dq.p;
import com.bytedance.sdk.openadsdk.h.mn;

/* loaded from: classes3.dex */
public class EcMallWebView extends SSWebView {

    /* renamed from: d, reason: collision with root package name */
    private final j f3154d;
    c dq;
    private s ox;

    public EcMallWebView(final Context context, j jVar, final int i) {
        super(context);
        this.f3154d = jVar;
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.live.EcMallWebView.1
            @Override // java.lang.Runnable
            public void run() {
                EcMallWebView.this.dq(context, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Context context, final int i) {
        this.dq = new c(context);
        this.ox = new s() { // from class: com.bytedance.sdk.openadsdk.core.live.EcMallWebView.2
            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void dq() {
                if (EcMallWebView.this.f3154d != null) {
                    com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(EcMallWebView.this.f3154d.ff(), com.bytedance.sdk.openadsdk.f.d.dq.dq.class);
                    if (dqVar != null) {
                        dqVar.dq(2, null);
                    }
                } else {
                    ig.dq("EcMallWebView", "onSendReward failed meta null");
                }
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(com.bytedance.sdk.openadsdk.core.ir.c.dq(i), EcMallWebView.this.f3154d);
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void dq(int i2, String str) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void ox() {
            }
        };
        this.dq.d(this).dq(this.f3154d).d(this.f3154d.fx()).ox(this.f3154d.dn()).ox(i).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.f3154d)).dq((SSWebView) this).dq(this.ox).dq(true);
        setWebViewClient(new p(context, this.dq, this.f3154d.fx(), new com.bytedance.sdk.openadsdk.core.ig.p(this.f3154d, this).d(true)));
        setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.dq));
        String iw = gh.iw(this.f3154d);
        if (TextUtils.isEmpty(iw)) {
            iw = this.f3154d.ae();
        }
        if (TextUtils.isEmpty(iw)) {
            return;
        }
        dq(iw);
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        c cVar = this.dq;
        if (cVar != null) {
            cVar.jy(z);
        }
    }
}
