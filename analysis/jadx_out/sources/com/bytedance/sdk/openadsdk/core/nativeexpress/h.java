package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.view.ViewGroup;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.er;
import com.bytedance.sdk.openadsdk.core.ir.ir;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class h implements SSWebView.d {

    /* renamed from: d, reason: collision with root package name */
    private j f3227d;
    private SSWebView dq;
    private c ox;

    public h(SSWebView sSWebView, c cVar, j jVar) {
        this.dq = sSWebView;
        this.f3227d = jVar;
        this.ox = cVar;
    }

    private boolean dq() {
        SSWebView sSWebView = this.dq;
        if (sSWebView == null) {
            return false;
        }
        return er.dq(sSWebView, 50, com.bytedance.sdk.openadsdk.core.ir.c.ia(this.f3227d));
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView.d
    public void dq(final int i) {
        boolean dq = dq();
        com.bytedance.sdk.component.utils.ig.d("xeasy", "wv:".concat(String.valueOf(dq)));
        if (dq) {
            if (com.bytedance.sdk.openadsdk.core.wp.d().s()) {
                SSWebView sSWebView = this.dq;
                if (sSWebView != null) {
                    ir.dq((WeakReference<ViewGroup>) new WeakReference((ViewGroup) sSWebView.getParent()), new com.bytedance.sdk.openadsdk.core.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.1
                        @Override // com.bytedance.sdk.openadsdk.core.d.ox
                        public void dq() {
                            if (h.this.ox != null) {
                                h.this.ox.dq(i);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            c cVar = this.ox;
            if (cVar != null) {
                cVar.dq(i);
            }
        }
    }
}
