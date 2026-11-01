package com.bytedance.sdk.openadsdk.core;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import g.hat;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class iw implements dq.d {
    private final Map<Integer, WeakReference<dq.d>> dq = new HashMap();

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void d() {
        Iterator<Map.Entry<Integer, WeakReference<dq.d>>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            WeakReference<dq.d> value = it.next().getValue();
            if (value != null) {
                dq.d dVar = value.get();
                if (dVar != null) {
                    dVar.d();
                } else {
                    it.remove();
                }
            } else {
                it.remove();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
    public void dq() {
        Iterator<Map.Entry<Integer, WeakReference<dq.d>>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            WeakReference<dq.d> value = it.next().getValue();
            if (value != null) {
                dq.d dVar = value.get();
                if (dVar != null) {
                    dVar.dq();
                } else {
                    it.remove();
                }
            } else {
                it.remove();
            }
        }
    }

    public void dq(Bridge bridge) {
        if (bridge == null) {
            return;
        }
        hat g2 = hat.g(1);
        g2.f19148c.put(0, new EventListener() { // from class: com.bytedance.sdk.openadsdk.core.iw.1
            @Override // com.bykv.vk.openvk.api.proto.EventListener
            public ValueSet onEvent(int i, Result result) {
                if (i == 0) {
                    iw.this.dq();
                    return null;
                }
                if (i != 1) {
                    return null;
                }
                iw.this.d();
                return null;
            }
        });
        bridge.call(9, g2.k(), null);
    }

    public void dq(dq.d dVar) {
        if (dVar == null) {
            return;
        }
        this.dq.put(Integer.valueOf(dVar.hashCode()), new WeakReference<>(dVar));
    }
}
