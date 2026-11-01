package com.bytedance.sdk.component.iw;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.ats.ATSApi;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.util.concurrent.ExecutorService;

@ATSApi
/* loaded from: classes.dex */
public interface o {
    @ATSMethod(11)
    o d(int i);

    @ATSMethod(5)
    o d(String str);

    @ATSMethod(15)
    o d(boolean z);

    @ATSMethod(3)
    kk dq(ImageView imageView);

    @ATSMethod(2)
    kk dq(f fVar);

    @ATSMethod(1)
    kk dq(f fVar, int i);

    @ATSMethod(10)
    o dq(int i);

    @ATSMethod(9)
    o dq(Bitmap.Config config);

    @ATSMethod(8)
    o dq(ImageView.ScaleType scaleType);

    @ATSMethod(6)
    o dq(d dVar);

    @ATSMethod(17)
    o dq(ia iaVar);

    @ATSMethod(21)
    o dq(q qVar);

    @ATSMethod(13)
    o dq(r rVar);

    @ATSMethod(4)
    o dq(String str);

    @ATSMethod(16)
    o dq(ExecutorService executorService);

    @ATSMethod(14)
    o dq(boolean z);

    @ATSMethod(12)
    o ox(int i);

    @ATSMethod(7)
    o ox(String str);

    @ATSMethod(20)
    o ox(boolean z);

    @ATSMethod(18)
    o p(int i);

    @ATSMethod(19)
    o s(int i);
}
