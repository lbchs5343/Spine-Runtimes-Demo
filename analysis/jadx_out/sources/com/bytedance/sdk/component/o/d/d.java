package com.bytedance.sdk.component.o.d;

import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.e;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class d extends e implements ox {

    /* renamed from: d, reason: collision with root package name */
    private final HandlerThread f2017d;

    public d(HandlerThread handlerThread, e.dq dqVar) {
        super(handlerThread.getLooper(), dqVar);
        this.f2017d = handlerThread;
    }

    public void d() {
        HandlerThread handlerThread = this.f2017d;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    @Override // com.bytedance.sdk.component.o.d.ox
    public void dq() {
        removeCallbacksAndMessages(null);
        WeakReference<e.dq> weakReference = this.dq;
        if (weakReference != null) {
            weakReference.clear();
            this.dq = null;
        }
    }

    public void dq(e.dq dqVar) {
        this.dq = new WeakReference<>(dqVar);
    }
}
