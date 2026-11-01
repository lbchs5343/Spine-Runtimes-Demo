package com.bytedance.sdk.component.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class e extends Handler {
    protected WeakReference<dq> dq;

    public interface dq {
        void dq(Message message);
    }

    public e(Looper looper, dq dqVar) {
        super(looper);
        if (dqVar != null) {
            this.dq = new WeakReference<>(dqVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        dq dqVar;
        WeakReference<dq> weakReference = this.dq;
        if (weakReference == null || (dqVar = weakReference.get()) == null || message == null) {
            return;
        }
        dqVar.dq(message);
    }
}
