package com.google.android.gms.internal.ads;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import g.sr;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzfob {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfob f8091a = new zzfob();

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f8092b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8093c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8094d = false;

    public static zzfob zza() {
        return f8091a;
    }

    public final void zzc() {
        Context context = (Context) this.f8092b.get();
        if (context == null) {
            return;
        }
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        boolean isDeviceLocked = Build.VERSION.SDK_INT >= 22 ? keyguardManager.isDeviceLocked() : keyguardManager.inKeyguardRestrictedInputMode();
        zzd(this.f8093c, isDeviceLocked);
        this.f8094d = isDeviceLocked;
    }

    public final void zzd(boolean z, boolean z2) {
        if ((z2 || z) == (this.f8094d || this.f8093c)) {
            return;
        }
        Iterator it = zzfnr.zza().zzc().iterator();
        while (it.hasNext()) {
            ((zzfna) it.next()).zzg().zzm(z2 || z);
        }
    }

    public final void zze(Context context) {
        if (context == null) {
            return;
        }
        this.f8092b = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new sr(16, this), intentFilter);
    }
}
