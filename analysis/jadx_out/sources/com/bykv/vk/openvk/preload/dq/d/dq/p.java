package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.fw;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;

/* loaded from: classes.dex */
public final class p implements i {
    private final com.bykv.vk.openvk.preload.dq.d.ox dq;

    public p(com.bykv.vk.openvk.preload.dq.d.ox oxVar) {
        this.dq = oxVar;
    }

    public static r<?> dq(com.bykv.vk.openvk.preload.dq.d.ox oxVar, com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<?> dqVar, com.bykv.vk.openvk.preload.dq.dq.d dVar) {
        r<?> igVar;
        Object dq = oxVar.dq(com.bykv.vk.openvk.preload.dq.ox.dq.dq((Class) dVar.dq())).dq();
        if (dq instanceof r) {
            igVar = (r) dq;
        } else if (dq instanceof i) {
            igVar = ((i) dq).dq(iwVar, dqVar);
        } else {
            boolean z = dq instanceof fw;
            if (!z && !(dq instanceof com.bykv.vk.openvk.preload.dq.o)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + dq.getClass().getName() + " as a @JsonAdapter for " + dqVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            igVar = new ig<>(z ? (fw) dq : null, dq instanceof com.bykv.vk.openvk.preload.dq.o ? (com.bykv.vk.openvk.preload.dq.o) dq : null, iwVar, dqVar);
        }
        return (igVar == null || !dVar.d()) ? igVar : igVar.dq();
    }

    @Override // com.bykv.vk.openvk.preload.dq.i
    public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        com.bykv.vk.openvk.preload.dq.dq.d dVar = (com.bykv.vk.openvk.preload.dq.dq.d) dqVar.dq.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.d.class);
        if (dVar == null) {
            return null;
        }
        return (r<T>) dq(this.dq, iwVar, dqVar, dVar);
    }
}
