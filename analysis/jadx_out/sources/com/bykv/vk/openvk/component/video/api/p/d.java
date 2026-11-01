package com.bykv.vk.openvk.component.video.api.p;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public interface d<T> extends com.bykv.vk.openvk.component.video.api.d.dq {

    public enum dq {
        hideCloseBtn,
        alwayShowBackBtn,
        alwayShowMediaView,
        fixedSize,
        hideBackBtn,
        hideTopMoreBtn
    }

    void d();

    void dq();

    void dq(int i);

    void dq(Drawable drawable);

    void dq(T t, WeakReference<Context> weakReference, boolean z);

    void dq(boolean z);

    View ox();
}
