package com.bytedance.pangle;

import android.os.Build;
import com.bytedance.pangle.flipped.FlippedV2Impl;
import com.bytedance.pangle.log.IZeusReporter;

/* loaded from: classes.dex */
public final class b {
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
    
        if (r0 > 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001d, code lost:
    
        if (r1 > 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a() {
        com.bytedance.pangle.flipped.c flippedV2Impl;
        int i;
        int i2;
        GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_FLIPPED, "start");
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 30) {
            if (i3 == 29) {
                i2 = Build.VERSION.PREVIEW_SDK_INT;
            }
            if (i3 < 28) {
                if (i3 == 27) {
                    i = Build.VERSION.PREVIEW_SDK_INT;
                }
                flippedV2Impl = new com.bytedance.pangle.flipped.a();
                flippedV2Impl.invokeHiddenApiRestrictions();
                GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_FLIPPED, "finish");
            }
            flippedV2Impl = new com.bytedance.pangle.flipped.b();
            flippedV2Impl.invokeHiddenApiRestrictions();
            GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_FLIPPED, "finish");
        }
        flippedV2Impl = new FlippedV2Impl();
        flippedV2Impl.invokeHiddenApiRestrictions();
        GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_FLIPPED, "finish");
    }
}
