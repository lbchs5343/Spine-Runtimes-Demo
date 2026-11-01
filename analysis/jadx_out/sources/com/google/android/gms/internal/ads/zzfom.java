package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;

/* loaded from: classes3.dex */
public final class zzfom {

    /* renamed from: a, reason: collision with root package name */
    public static UiModeManager f8105a;

    public static zzfnc zza() {
        UiModeManager uiModeManager = f8105a;
        if (uiModeManager == null) {
            return zzfnc.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        return currentModeType != 1 ? currentModeType != 4 ? zzfnc.OTHER : zzfnc.CTV : zzfnc.MOBILE;
    }

    public static void zzb(Context context) {
        if (context != null) {
            f8105a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
