package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* loaded from: classes.dex */
public class HomeWatcherReceiver extends BroadcastReceiver {
    private dq dq;

    public interface dq {
        void d();

        void dq();
    }

    public void dq(dq dqVar) {
        this.dq = dqVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            String action = intent.getAction();
            "onReceive: action: ".concat(String.valueOf(action));
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                String stringExtra = intent.getStringExtra(MediationConstant.KEY_REASON);
                "reason: ".concat(String.valueOf(stringExtra));
                if ("homekey".equals(stringExtra)) {
                    dq dqVar = this.dq;
                    if (dqVar != null) {
                        dqVar.dq();
                        return;
                    }
                    return;
                }
                if (!"recentapps".equals(stringExtra)) {
                    "assist".equals(stringExtra);
                    return;
                }
                dq dqVar2 = this.dq;
                if (dqVar2 != null) {
                    dqVar2.d();
                }
            }
        } catch (Throwable unused) {
            ig.p("HomeReceiver", "ACTION_CLOSE_SYSTEM_DIALOGS throw");
        }
    }
}
