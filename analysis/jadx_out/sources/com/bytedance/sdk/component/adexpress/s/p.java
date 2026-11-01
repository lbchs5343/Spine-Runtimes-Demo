package com.bytedance.sdk.component.adexpress.s;

import android.webkit.JavascriptInterface;
import com.bytedance.sdk.component.dq.e;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class p {
    private WeakReference<e> dq;

    public p(e eVar) {
        this.dq = new WeakReference<>(eVar);
    }

    public void dq(e eVar) {
        this.dq = new WeakReference<>(eVar);
    }

    @JavascriptInterface
    public void invokeMethod(String str) {
        WeakReference<e> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().invokeMethod(str);
    }
}
