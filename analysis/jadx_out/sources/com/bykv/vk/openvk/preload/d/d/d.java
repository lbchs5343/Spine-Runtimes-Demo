package com.bykv.vk.openvk.preload.d.d;

import com.bykv.vk.openvk.preload.d.p;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class d extends dq {
    public List<dq> dq;

    public d(dq... dqVarArr) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.dq = copyOnWriteArrayList;
        copyOnWriteArrayList.addAll(Arrays.asList(dqVarArr));
    }

    @Override // com.bykv.vk.openvk.preload.d.d.dq
    public final <T> void d(com.bykv.vk.openvk.preload.d.d<T> dVar, p pVar) {
        for (dq dqVar : this.dq) {
            if (dqVar != null) {
                dqVar.d(dVar, pVar);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.d.dq
    public final <T> void d(com.bykv.vk.openvk.preload.d.d<T> dVar, p pVar, Throwable th) {
        for (dq dqVar : this.dq) {
            if (dqVar != null) {
                dqVar.d(dVar, pVar, th);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.d.dq
    public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, p pVar) {
        for (dq dqVar : this.dq) {
            if (dqVar != null) {
                dqVar.dq(dVar, pVar);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.d.dq
    public final <T> void dq(com.bykv.vk.openvk.preload.d.d<T> dVar, p pVar, Throwable th) {
        for (dq dqVar : this.dq) {
            if (dqVar != null) {
                dqVar.dq(dVar, pVar, th);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.d.dq
    public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, p pVar) {
        for (dq dqVar : this.dq) {
            if (dqVar != null) {
                dqVar.ox(dVar, pVar);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.d.d.dq
    public final <T> void ox(com.bykv.vk.openvk.preload.d.d<T> dVar, p pVar, Throwable th) {
        for (dq dqVar : this.dq) {
            if (dqVar != null) {
                dqVar.ox(dVar, pVar, th);
            }
        }
    }
}
