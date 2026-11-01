package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

/* loaded from: classes3.dex */
public class zzfnt implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b, reason: collision with root package name */
    public zzfns f8075b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8076c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8077d;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (!this.f8077d) {
            this.f8077d = true;
            if (this.f8076c) {
                zzb(true);
                zzfns zzfnsVar = this.f8075b;
                if (zzfnsVar != null) {
                    zzfnsVar.zzc(true);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        boolean z = runningAppProcessInfo.importance == 100 || zzc();
        if (this.f8077d != z) {
            this.f8077d = z;
            if (this.f8076c) {
                zzb(z);
                zzfns zzfnsVar = this.f8075b;
                if (zzfnsVar != null) {
                    zzfnsVar.zzc(z);
                }
            }
        }
    }

    public void zzb(boolean z) {
    }

    public boolean zzc() {
        return false;
    }

    public final void zzd(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public final void zze(zzfns zzfnsVar) {
        this.f8075b = zzfnsVar;
    }

    public final void zzf() {
        boolean z = true;
        this.f8076c = true;
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        if (runningAppProcessInfo.importance != 100 && !zzc()) {
            z = false;
        }
        this.f8077d = z;
        zzb(z);
    }

    public final void zzg() {
        this.f8076c = false;
        this.f8075b = null;
    }
}
