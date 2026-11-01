package com.bykv.vk.openvk.preload.geckox.o;

import com.bykv.vk.openvk.preload.d.p;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class d {
    private final Map<Class<? extends p<?, ?>>, com.bykv.vk.openvk.preload.d.d.d> dq = new HashMap();

    public com.bykv.vk.openvk.preload.d.d.dq dq(Class<? extends p<?, ?>> cls) {
        com.bykv.vk.openvk.preload.d.d.d dVar;
        synchronized (this.dq) {
            dVar = this.dq.get(cls);
        }
        return dVar;
    }

    public void dq(Class<? extends p<?, ?>> cls, com.bykv.vk.openvk.preload.d.d.dq dqVar) {
        synchronized (this.dq) {
            try {
                com.bykv.vk.openvk.preload.d.d.d dVar = this.dq.get(cls);
                if (dVar == null) {
                    dVar = new com.bykv.vk.openvk.preload.d.d.d(new com.bykv.vk.openvk.preload.d.d.dq[0]);
                    this.dq.put(cls, dVar);
                }
                if (dqVar != null) {
                    dVar.dq.add(dqVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
