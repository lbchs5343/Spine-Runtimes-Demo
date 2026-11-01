package com.bytedance.sdk.openadsdk.core.ugeno.webview;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.d;
import g.dlv;

/* loaded from: classes3.dex */
public class dq extends dlv {
    private String dq;

    public dq(Context context) {
        super(context, 0);
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public PageWebView ox() {
        return new PageWebView(this.s);
    }

    @Override // g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        if (str.equals("src")) {
            this.dq = str2;
        }
    }

    @Override // g.dlv
    public void p() {
        super.p();
        ((PageWebView) this.ia).setMeta(d.dq(o()));
        ((PageWebView) this.ia).d(o());
        ((PageWebView) this.ia).setUGenContext(this.ig);
        ((PageWebView) this.ia).dq();
        ((PageWebView) this.ia).dq(this.dq);
    }
}
