package com.bytedance.sdk.openadsdk.core.q.d;

import android.os.Looper;
import android.os.Message;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.u;

/* loaded from: classes3.dex */
public class dq implements e.dq {

    /* renamed from: d, reason: collision with root package name */
    private SSWebView f3411d;
    private String ox;
    private j p;
    private e dq = new e(Looper.getMainLooper(), this);
    private boolean s = false;

    public dq(SSWebView sSWebView, String str, j jVar) {
        this.f3411d = sSWebView;
        this.ox = str;
        this.p = jVar;
    }

    private void ox() {
        SSWebView sSWebView = this.f3411d;
        if (sSWebView != null) {
            sSWebView.dq(this.ox);
        }
    }

    public void d() {
        try {
            this.s = true;
            e eVar = this.dq;
            if (eVar != null) {
                eVar.removeCallbacksAndMessages(1001);
            }
            this.f3411d = null;
        } catch (Throwable unused) {
        }
    }

    public void dq() {
        long s = u.s(this.p);
        if (s <= 0 || s >= 1000) {
            ox();
            return;
        }
        if (this.dq == null) {
            this.dq = new e(Looper.getMainLooper(), this);
        }
        this.dq.sendEmptyMessageDelayed(1001, s);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (this.s) {
            return;
        }
        ox();
    }
}
