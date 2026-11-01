package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.eno;
import g.esy;
import g.ti;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzenv implements zzevy {
    public final Context zza;
    public final eno zzb;
    public final List zzc;

    public zzenv(Context context, eno enoVar, List list) {
        this.zza = context;
        this.zzb = enoVar;
        this.zzc = list;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        ComponentName componentName2;
        Bundle bundle = (Bundle) obj;
        if (((Boolean) zzbeq.zza.zze()).booleanValue()) {
            Bundle bundle2 = new Bundle();
            esy esyVar = ti.f20033a.z;
            String str = null;
            try {
                ActivityManager activityManager = (ActivityManager) this.zza.getSystemService(TTDownloadField.TT_ACTIVITY);
                if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null) {
                    componentName = runningTaskInfo.topActivity;
                    if (componentName != null) {
                        componentName2 = runningTaskInfo.topActivity;
                        str = componentName2.getClassName();
                    }
                }
            } catch (Exception unused) {
            }
            bundle2.putString(TTDownloadField.TT_ACTIVITY, str);
            Bundle bundle3 = new Bundle();
            bundle3.putInt(MediaFormat.KEY_WIDTH, this.zzb.zze);
            bundle3.putInt(MediaFormat.KEY_HEIGHT, this.zzb.zzb);
            bundle2.putBundle("size", bundle3);
            if (!this.zzc.isEmpty()) {
                List list = this.zzc;
                bundle2.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle.putBundle("view_hierarchy", bundle2);
        }
    }
}
