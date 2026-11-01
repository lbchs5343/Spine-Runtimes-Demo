package com.ss.android.downloadlib.mn;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class q extends Handler {
    WeakReference<dq> dq;

    public interface dq {
        void dq(Message message);
    }

    public q(Looper looper, dq dqVar) {
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
