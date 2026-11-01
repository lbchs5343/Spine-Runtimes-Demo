package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class zzh {
    public final int zza = 0;

    public zzh(int i, float f2) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzh.class == obj.getClass()) {
            if (Float.compare(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + 16337;
    }
}
