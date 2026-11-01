package com.bytedance.sdk.component.iw;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.ats.ATSApi;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;

@ATSApi
/* loaded from: classes.dex */
public interface kk {
    @ATSMethod(2)
    String d();

    @ATSMethod(1)
    boolean dq();

    @ATSMethod(8)
    Bitmap.Config ia();

    @ATSMethod(6)
    String iw();

    @ATSMethod(7)
    String mn();

    @ATSMethod(3)
    int ox();

    @ATSMethod(4)
    int p();

    @ATSMethod(5)
    ImageView.ScaleType s();
}
