package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.component.adexpress.p.kk;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class mn extends com.bytedance.sdk.openadsdk.core.widget.dq.p {
    public ArrayList<Integer> dq;
    private com.bytedance.sdk.component.adexpress.d.mp ig;
    private final com.bytedance.sdk.openadsdk.q.ia kk;
    private boolean no;
    private j o;

    public mn(Context context, c cVar, j jVar, com.bytedance.sdk.openadsdk.core.ig.p pVar, boolean z, com.bytedance.sdk.openadsdk.q.ia iaVar, com.bytedance.sdk.component.adexpress.d.mp mpVar) {
        super(context, cVar, jVar.fx(), pVar);
        this.dq = new ArrayList<>();
        this.o = jVar;
        this.no = z;
        this.kk = iaVar;
        this.ig = mpVar;
    }

    private void dq(long j, long j2, String str, int i) {
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.s;
        if (pVar == null || pVar.d() == null) {
            return;
        }
        kk.dq dq = com.bytedance.sdk.component.adexpress.p.kk.dq(str);
        if (dq == kk.dq.HTML) {
            this.s.d().dq(str, j, j2, i);
        } else if (dq == kk.dq.JS) {
            this.s.d().d(str, j, j2, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String p() {
        j jVar = this.o;
        if (jVar != null && jVar.tv() != null) {
            return this.o.tv().no();
        }
        j jVar2 = this.o;
        if (jVar2 == null || jVar2.ny() == null) {
            return null;
        }
        return "v3";
    }

    public int dq() {
        Iterator<Integer> it = this.dq.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            if (next.intValue() == 3 || next.intValue() == 2 || next.intValue() == -1) {
                return next.intValue();
            }
        }
        return TextUtils.isEmpty(p()) ? -1 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.iw = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.mn = false;
        super.onPageStarted(webView, str, bitmap);
        com.bytedance.sdk.component.adexpress.d.mp mpVar = this.ig;
        if (mpVar == null || !mpVar.wp()) {
            return;
        }
        com.bytedance.sdk.component.utils.no.dq(webView, "javascript:window.SDK_INJECT_DATA=" + this.ig.ox());
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
    @TargetApi(21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d("ExpressClient", "shouldInterceptRequest error1", th);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:0|1|2|(1:4)|5|(2:7|(8:9|10|11|12|(1:16)|(4:20|(1:22)|23|24)|27|28))|33|10|11|12|(2:14|16)|(5:18|20|(0)|23|24)|27|28|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0049, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
    
        com.bytedance.sdk.component.utils.ig.d("ExpressClient", "shouldInterceptRequest error2", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057 A[Catch: all -> 0x0049, TryCatch #1 {all -> 0x0049, blocks: (B:12:0x002f, B:14:0x0034, B:16:0x003b, B:18:0x004d, B:20:0x0053, B:22:0x0057, B:23:0x005a), top: B:11:0x002f }] */
    @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        String str2;
        long currentTimeMillis;
        com.bytedance.sdk.component.adexpress.dq.d.dq dq;
        long currentTimeMillis2;
        int i;
        com.bytedance.sdk.openadsdk.q.ia iaVar;
        try {
            com.bytedance.sdk.openadsdk.q.ia iaVar2 = this.kk;
            if (iaVar2 != null) {
                iaVar2.kk(str);
            }
            currentTimeMillis = System.currentTimeMillis();
            dq = com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq.dq(webView, this.o, str, new dq.InterfaceC0175dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.mn.1
                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq.InterfaceC0175dq
                public com.bytedance.sdk.component.adexpress.dq.d.dq dq(String str3, kk.dq dqVar, String str4) {
                    return com.bytedance.sdk.component.adexpress.dq.d.d.dq(str3, dqVar, str4, mn.this.p());
                }

                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq.InterfaceC0175dq
                public boolean dq() {
                    return true;
                }
            });
            currentTimeMillis2 = System.currentTimeMillis();
        } catch (Throwable th) {
            th = th;
            str2 = str;
        }
        if (dq != null) {
            if (dq.dq() != null) {
                i = 1;
                str2 = str;
                dq(currentTimeMillis, currentTimeMillis2, str2, i);
                if (dq != null && dq.getType() != 5) {
                    this.dq.add(Integer.valueOf(dq.getType()));
                }
                if (dq != null && dq.dq() != null) {
                    iaVar = this.kk;
                    if (iaVar != null) {
                        iaVar.o(str2);
                    }
                    return dq.dq();
                }
                return super.shouldInterceptRequest(webView, str2);
            }
        }
        i = 2;
        str2 = str;
        dq(currentTimeMillis, currentTimeMillis2, str2, i);
        if (dq != null) {
            this.dq.add(Integer.valueOf(dq.getType()));
        }
        if (dq != null) {
            iaVar = this.kk;
            if (iaVar != null) {
            }
            return dq.dq();
        }
        return super.shouldInterceptRequest(webView, str2);
    }
}
