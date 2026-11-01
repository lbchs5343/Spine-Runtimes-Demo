package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class d implements i {
    private final com.bykv.vk.openvk.preload.dq.d.ox dq;

    public static final class dq<E> extends r<Collection<E>> {

        /* renamed from: d, reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.dq.d.kk<? extends Collection<E>> f586d;
        private final r<E> dq;

        public dq(com.bykv.vk.openvk.preload.dq.iw iwVar, Type type, r<E> rVar, com.bykv.vk.openvk.preload.dq.d.kk<? extends Collection<E>> kkVar) {
            this.dq = new mp(iwVar, rVar, type);
            this.f586d = kkVar;
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final /* synthetic */ Object dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
            if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                dqVar.no();
                return null;
            }
            Collection<E> dq = this.f586d.dq();
            dqVar.dq();
            while (dqVar.s()) {
                dq.add(this.dq.dq(dqVar));
            }
            dqVar.d();
            return dq;
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                oxVar.s();
                return;
            }
            oxVar.dq();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.dq.dq(oxVar, it.next());
            }
            oxVar.d();
        }
    }

    public d(com.bykv.vk.openvk.preload.dq.d.ox oxVar) {
        this.dq = oxVar;
    }

    @Override // com.bykv.vk.openvk.preload.dq.i
    public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        Type type = dqVar.f632d;
        Class<? super T> cls = dqVar.dq;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type dq2 = com.bykv.vk.openvk.preload.dq.d.d.dq(type, (Class<?>) cls);
        return new dq(iwVar, dq2, iwVar.dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq(dq2)), this.dq.dq(dqVar));
    }
}
