package com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout;

import android.widget.FrameLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.d.d;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public abstract class AbstractEndCardFrameLayout extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    protected final j f2600d;
    protected final TTBaseVideoActivity dq;

    public AbstractEndCardFrameLayout(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity);
        this.dq = tTBaseVideoActivity;
        this.f2600d = jVar;
        dq();
    }

    public void d() {
    }

    public abstract void dq();

    public abstract SSWebView getEndCardWebView();

    public abstract SSWebView getPlayableWebView();

    public abstract FrameLayout getVideoArea();

    public abstract void setClickListener(d dVar);
}
