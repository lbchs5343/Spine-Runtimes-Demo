package com.bytedance.adsdk.ugeno.yoga;

/* loaded from: classes.dex */
public class ig extends YogaNodeJNIBase {
    public void finalize() throws Throwable {
        try {
            ig();
        } finally {
            super.finalize();
        }
    }

    public void ig() {
        long j = this.dq;
        if (j != 0) {
            this.dq = 0L;
            YogaNative.jni_YGNodeDeallocateJNI(j);
        }
    }
}
