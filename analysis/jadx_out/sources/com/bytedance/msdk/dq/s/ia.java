package com.bytedance.msdk.dq.s;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ia extends Handler {
    private final WeakReference<dq> dq;

    public interface dq {
        void dq(Message message);
    }

    public ia(Looper looper, dq dqVar) {
        super(looper);
        this.dq = new WeakReference<>(dqVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        dq dqVar = this.dq.get();
        if (dqVar == null || message == null) {
            return;
        }
        dqVar.dq(message);
    }
}
