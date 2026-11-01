package com.bytedance.sdk.openadsdk.ox;

import android.app.Application;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.ox.dq;
import g.hat;

/* loaded from: classes3.dex */
public final class ox implements Bridge {
    private static volatile ox dq;

    /* renamed from: d, reason: collision with root package name */
    private d f3845d;
    private dq ox = new dq();

    private ox() {
    }

    public static ox dq() {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        dq = new ox();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private void dq(final EventListener eventListener) {
        this.ox.dq(new dq.InterfaceC0204dq() { // from class: com.bytedance.sdk.openadsdk.ox.ox.1
            @Override // com.bytedance.sdk.openadsdk.ox.dq.InterfaceC0204dq
            public void d() {
                eventListener.onEvent(1, null);
            }

            @Override // com.bytedance.sdk.openadsdk.ox.dq.InterfaceC0204dq
            public void dq() {
                eventListener.onEvent(0, null);
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        Bridge dq2;
        switch (i) {
            case 2:
                return (T) this.ox.dq();
            case 3:
                return (T) TTAppContextHolder.getContext();
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                d dVar = this.f3845d;
                if (dVar != null && (dq2 = dVar.dq(4)) != null) {
                    return (T) dq2.call(i, valueSet, cls);
                }
                return null;
            case 9:
                Object objectValue = valueSet.objectValue(0, Object.class);
                if (objectValue instanceof EventListener) {
                    dq((EventListener) objectValue);
                }
                return null;
            case 10:
                d dVar2 = this.f3845d;
                if (dVar2 == null) {
                    return null;
                }
                return (T) dVar2.dq(valueSet.intValue(0));
            default:
                return null;
        }
    }

    public Application.ActivityLifecycleCallbacks d() {
        return this.ox;
    }

    public void dq(d dVar) {
        this.f3845d = dVar;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        f2.o(10000, 5);
        return f2.k();
    }
}
