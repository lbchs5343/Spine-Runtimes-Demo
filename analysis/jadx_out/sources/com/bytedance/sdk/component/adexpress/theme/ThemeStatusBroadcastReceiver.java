package com.bytedance.sdk.component.adexpress.theme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ThemeStatusBroadcastReceiver extends BroadcastReceiver {
    private WeakReference<dq> dq;

    public void dq(dq dqVar) {
        this.dq = new WeakReference<>(dqVar);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("theme_status_change", 0);
        WeakReference<dq> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().b_(intExtra);
    }
}
