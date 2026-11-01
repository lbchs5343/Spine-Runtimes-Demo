package com.bykv.vk.openvk.preload.dq;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class r<T> {
    public final no dq(T t) {
        try {
            com.bykv.vk.openvk.preload.dq.d.dq.iw iwVar = new com.bykv.vk.openvk.preload.dq.d.dq.iw();
            dq(iwVar, t);
            if (iwVar.dq.isEmpty()) {
                return iwVar.f590d;
            }
            throw new IllegalStateException("Expected one JSON element but was " + iwVar.dq);
        } catch (IOException e2) {
            throw new ig(e2);
        }
    }

    public final r<T> dq() {
        return new r<T>() { // from class: com.bykv.vk.openvk.preload.dq.r.1
            @Override // com.bykv.vk.openvk.preload.dq.r
            public final T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
                if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                    return (T) r.this.dq(dqVar);
                }
                dqVar.no();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.dq.r
            public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T t) throws IOException {
                if (t == null) {
                    oxVar.s();
                } else {
                    r.this.dq(oxVar, t);
                }
            }
        };
    }

    public abstract T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException;

    public abstract void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T t) throws IOException;
}
