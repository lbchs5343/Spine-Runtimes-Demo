package com.google.android.gms.internal.ads;

import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class zzfos {
    public static String zza(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        int visibility = view.getVisibility();
        if (visibility == 8) {
            return "viewGone";
        }
        if (visibility == 4) {
            return "viewInvisible";
        }
        if (visibility != 0) {
            return "viewNotVisible";
        }
        if (view.getAlpha() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return "viewAlphaZero";
        }
        return null;
    }
}
