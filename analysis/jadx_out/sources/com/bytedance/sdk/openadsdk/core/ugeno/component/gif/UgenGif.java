package com.bytedance.sdk.openadsdk.core.ugeno.component.gif;

import android.content.Context;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import g.eun;

/* loaded from: classes3.dex */
public class UgenGif extends GifView {
    private eun dq;

    public UgenGif(Context context) {
        super(context);
    }

    public void dq(eun eunVar) {
        this.dq = eunVar;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        eun eunVar = this.dq;
        if (eunVar != null) {
            eunVar.mn();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        eun eunVar = this.dq;
        if (eunVar != null) {
            eunVar.ia();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.GifView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        eun eunVar = this.dq;
        if (eunVar != null) {
            eunVar.dq(i, i2, i3, i4);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.GifView, android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        eun eunVar = this.dq;
        if (eunVar != null) {
            eunVar.s();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        eun eunVar = this.dq;
        if (eunVar != null) {
            eunVar.dq(z);
        }
    }
}
