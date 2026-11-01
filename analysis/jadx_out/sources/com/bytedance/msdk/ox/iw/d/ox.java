package com.bytedance.msdk.ox.iw.d;

import android.os.Handler;

/* loaded from: classes.dex */
public class ox implements dq {

    /* renamed from: d, reason: collision with root package name */
    private d f1134d;
    private Handler dq;

    @Override // com.bytedance.msdk.ox.iw.d.dq
    public void dq() {
        d dVar;
        if (this.dq == null || (dVar = this.f1134d) == null || dVar.dq()) {
            return;
        }
        this.dq.removeCallbacks(this.f1134d);
        this.f1134d.run();
    }

    @Override // com.bytedance.msdk.ox.iw.d.dq
    public void dq(Handler handler, com.bytedance.msdk.core.no.d dVar, d dVar2) {
        this.dq = handler;
        this.f1134d = dVar2;
        if (handler == null || dVar2 == null || dVar == null) {
            return;
        }
        dVar.s().put("serverBidding_timeout", Boolean.FALSE);
        handler.postDelayed(dVar2, dVar.mn());
    }
}
