package com.bytedance.sdk.component.adexpress.s;

import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ox {
    private WeakReference<d> dq;

    public ox(d dVar) {
        this.dq = new WeakReference<>(dVar);
    }

    @JavascriptInterface
    public void adAnalysisData(String str) {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().adAnalysisData(str);
    }

    @JavascriptInterface
    public String adInfo() {
        WeakReference<d> weakReference = this.dq;
        return (weakReference == null || weakReference.get() == null) ? "" : this.dq.get().adInfo();
    }

    @JavascriptInterface
    public String appInfo() {
        WeakReference<d> weakReference = this.dq;
        return (weakReference == null || weakReference.get() == null) ? "" : this.dq.get().appInfo();
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().changeVideoState(str);
    }

    @JavascriptInterface
    public void clickEvent(String str) {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().clickEvent(str);
    }

    public void dq(d dVar) {
        if (dVar == null) {
            this.dq = null;
        } else {
            this.dq = new WeakReference<>(dVar);
        }
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().dynamicTrack(str);
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        WeakReference<d> weakReference = this.dq;
        return (weakReference == null || weakReference.get() == null) ? "" : this.dq.get().getCurrentVideoState();
    }

    @JavascriptInterface
    public String getData(String str) {
        WeakReference<d> weakReference = this.dq;
        return (weakReference == null || weakReference.get() == null) ? "" : this.dq.get().getData(str);
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        WeakReference<d> weakReference = this.dq;
        return (weakReference == null || weakReference.get() == null) ? "" : this.dq.get().getTemplateInfo();
    }

    @JavascriptInterface
    public void initRenderFinish() {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().initRenderFinish();
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().muteVideo(str);
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().renderDidFinish(str);
    }

    @JavascriptInterface
    public void requestPauseVideo(String str) {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().requestPauseVideo(str);
    }

    @JavascriptInterface
    public void skipVideo() {
        WeakReference<d> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().skipVideo();
    }
}
