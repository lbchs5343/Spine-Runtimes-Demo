package com.bytedance.sdk.openadsdk.core.o.ox;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wn;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public abstract class s implements com.bytedance.sdk.openadsdk.core.o.d.ox {

    /* renamed from: d, reason: collision with root package name */
    protected WeakReference<dq.InterfaceC0174dq> f3333d;
    protected boolean dq = true;

    private String d() {
        dq.InterfaceC0174dq interfaceC0174dq;
        com.bytedance.sdk.openadsdk.core.multipro.d.dq op;
        WeakReference<dq.InterfaceC0174dq> weakReference = this.f3333d;
        if (weakReference == null || (interfaceC0174dq = weakReference.get()) == null || (op = interfaceC0174dq.op()) == null) {
            return null;
        }
        return op.dq().toString();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(dq.InterfaceC0174dq interfaceC0174dq) {
        this.f3333d = new WeakReference<>(interfaceC0174dq);
    }

    public boolean dq(Context context, j jVar, String str) {
        if (!this.dq || !com.bytedance.sdk.openadsdk.core.ir.iw.dq(jVar) || !wn.dq(context, jVar, c.dq(str), str, d())) {
            return false;
        }
        TTNativePageActivity.dq(this);
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void iw(boolean z) {
        this.dq = z;
    }

    public int o() {
        return hashCode();
    }
}
