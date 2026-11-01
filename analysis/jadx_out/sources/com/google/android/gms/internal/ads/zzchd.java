package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public final class zzchd extends MutableContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public Activity f5269a;

    /* renamed from: b, reason: collision with root package name */
    public Context f5270b;

    /* renamed from: c, reason: collision with root package name */
    public Context f5271c;

    public zzchd(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f5271c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f5270b = applicationContext;
        this.f5269a = context instanceof Activity ? (Activity) context : null;
        this.f5271c = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f5269a;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            this.f5270b.startActivity(intent);
        }
    }

    public final Activity zza() {
        return this.f5269a;
    }

    public final Context zzb() {
        return this.f5271c;
    }
}
