package com.bytedance.sdk.component.ia.d.dq.dq.d;

import android.content.Context;

/* loaded from: classes.dex */
public class s extends iw {
    public s(Context context, com.bytedance.sdk.component.ia.d.p.d.dq dqVar, com.bytedance.sdk.component.ia.dq.s sVar) {
        super(context, dqVar, sVar);
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.iw
    public byte d() {
        return (byte) 2;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.iw, com.bytedance.sdk.component.ia.d.dq.dq.d.d
    public String dq() {
        com.bytedance.sdk.component.ia.dq.iw d2 = ((iw) this).f1907d.d();
        if (d2 != null) {
            return d2.ox();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.iw, com.bytedance.sdk.component.ia.d.dq.dq
    public boolean dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        return com.bytedance.sdk.component.ia.d.ox.dq.d(dVar);
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.iw
    public byte ox() {
        return (byte) 3;
    }
}
