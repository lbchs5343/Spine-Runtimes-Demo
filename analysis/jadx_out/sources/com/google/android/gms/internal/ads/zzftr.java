package com.google.android.gms.internal.ads;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class zzftr {
    public static final int zza;
    public static final ClipData zzb;

    static {
        zza = Build.VERSION.SDK_INT > 22 ? TTAdConstant.KEY_CLICK_AREA : 0;
        zzb = ClipData.newIntent("", new Intent());
    }

    public static Intent a(int i, Intent intent) {
        boolean b2 = b(0, 17);
        boolean b3 = b(0, 9);
        boolean b4 = b(0, 5);
        boolean b5 = b(0, 3);
        zzfwq.zzf((i & 88) == 0, "Cannot set any dangerous parts of intent to be mutable.");
        zzfwq.zzf((i & 1) == 0 || b5, "Cannot use Intent.FILL_IN_ACTION unless the action is marked as mutable.");
        zzfwq.zzf((i & 2) == 0 || b4, "Cannot use Intent.FILL_IN_DATA unless the data is marked as mutable.");
        zzfwq.zzf((i & 4) == 0 || b3, "Cannot use Intent.FILL_IN_CATEGORIES unless the category is marked as mutable.");
        zzfwq.zzf((i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) == 0 || b2, "Cannot use Intent.FILL_IN_CLIP_DATA unless the clip data is marked as mutable.");
        zzfwq.zzf(intent.getComponent() != null, "Must set component on Intent.");
        if (b(0, 1)) {
            zzfwq.zzf(!b(i, TTAdConstant.KEY_CLICK_AREA), "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.");
        } else {
            zzfwq.zzf(Build.VERSION.SDK_INT < 23 || b(i, TTAdConstant.KEY_CLICK_AREA), "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.");
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !b(i, TTAdConstant.KEY_CLICK_AREA)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!b5 && intent2.getAction() == null) {
                intent2.setAction("");
            }
            if (!b3 && intent2.getCategories() == null) {
                intent2.addCategory("");
            }
            if (!b4 && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!b2 && intent2.getClipData() == null) {
                intent2.setClipData(zzb);
            }
        }
        return intent2;
    }

    public static boolean b(int i, int i2) {
        return (i & i2) == i2;
    }

    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getActivity(context, 0, a(201326592, intent), 201326592);
    }

    public static PendingIntent zzb(Context context, int i, Intent intent, int i2, int i3) {
        return PendingIntent.getService(context, 0, a(i2, intent), i2);
    }
}
