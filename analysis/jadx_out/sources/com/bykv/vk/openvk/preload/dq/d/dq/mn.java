package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.cd;
import com.bykv.vk.openvk.preload.dq.f;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class mn implements i {

    /* renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.dq.d.ox f594d;
    final boolean dq;

    public final class dq<K, V> extends r<Map<K, V>> {

        /* renamed from: d, reason: collision with root package name */
        private final r<K> f595d;
        private final r<V> ox;
        private final com.bykv.vk.openvk.preload.dq.d.kk<? extends Map<K, V>> p;

        public dq(com.bykv.vk.openvk.preload.dq.iw iwVar, Type type, r<K> rVar, Type type2, r<V> rVar2, com.bykv.vk.openvk.preload.dq.d.kk<? extends Map<K, V>> kkVar) {
            this.f595d = new mp(iwVar, rVar, type);
            this.ox = new mp(iwVar, rVar2, type2);
            this.p = kkVar;
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final /* synthetic */ Object dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
            com.bykv.vk.openvk.preload.dq.p.d iw = dqVar.iw();
            if (iw == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
                dqVar.no();
                return null;
            }
            Map<K, V> dq = this.p.dq();
            if (iw != com.bykv.vk.openvk.preload.dq.p.d.BEGIN_ARRAY) {
                dqVar.ox();
                while (dqVar.s()) {
                    com.bykv.vk.openvk.preload.dq.d.iw.dq.dq(dqVar);
                    K dq2 = this.f595d.dq(dqVar);
                    if (dq.put(dq2, this.ox.dq(dqVar)) != null) {
                        throw new cd("duplicate key: ".concat(String.valueOf(dq2)));
                    }
                }
                dqVar.p();
                return dq;
            }
            dqVar.dq();
            while (dqVar.s()) {
                dqVar.dq();
                K dq3 = this.f595d.dq(dqVar);
                if (dq.put(dq3, this.ox.dq(dqVar)) != null) {
                    throw new cd("duplicate key: ".concat(String.valueOf(dq3)));
                }
                dqVar.d();
            }
            dqVar.d();
            return dq;
        }

        @Override // com.bykv.vk.openvk.preload.dq.r
        public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Object obj) throws IOException {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                oxVar.s();
                return;
            }
            if (!mn.this.dq) {
                oxVar.ox();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    oxVar.dq(String.valueOf(entry.getKey()));
                    this.ox.dq(oxVar, entry.getValue());
                }
                oxVar.p();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i = 0;
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                com.bykv.vk.openvk.preload.dq.no dq = this.f595d.dq((r<K>) entry2.getKey());
                arrayList.add(dq);
                arrayList2.add(entry2.getValue());
                z |= (dq instanceof com.bykv.vk.openvk.preload.dq.kk) || (dq instanceof com.bykv.vk.openvk.preload.dq.q);
            }
            if (z) {
                oxVar.dq();
                int size = arrayList.size();
                while (i < size) {
                    oxVar.dq();
                    com.bykv.vk.openvk.preload.dq.d.no.dq((com.bykv.vk.openvk.preload.dq.no) arrayList.get(i), oxVar);
                    this.ox.dq(oxVar, arrayList2.get(i));
                    oxVar.d();
                    i++;
                }
                oxVar.d();
                return;
            }
            oxVar.ox();
            int size2 = arrayList.size();
            while (i < size2) {
                com.bykv.vk.openvk.preload.dq.no noVar = (com.bykv.vk.openvk.preload.dq.no) arrayList.get(i);
                if (noVar instanceof f) {
                    f mn = noVar.mn();
                    Object obj2 = mn.dq;
                    if (obj2 instanceof Number) {
                        str = String.valueOf(mn.dq());
                    } else if (obj2 instanceof Boolean) {
                        str = Boolean.toString(mn.iw());
                    } else {
                        if (!(obj2 instanceof String)) {
                            throw new AssertionError();
                        }
                        str = mn.d();
                    }
                } else {
                    if (!(noVar instanceof com.bykv.vk.openvk.preload.dq.mp)) {
                        throw new AssertionError();
                    }
                    str = "null";
                }
                oxVar.dq(str);
                this.ox.dq(oxVar, arrayList2.get(i));
                i++;
            }
            oxVar.p();
        }
    }

    public mn(com.bykv.vk.openvk.preload.dq.d.ox oxVar, boolean z) {
        this.f594d = oxVar;
        this.dq = z;
    }

    @Override // com.bykv.vk.openvk.preload.dq.i
    public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        Type type = dqVar.f632d;
        if (!Map.class.isAssignableFrom(dqVar.dq)) {
            return null;
        }
        Type[] d2 = com.bykv.vk.openvk.preload.dq.d.d.d(type, com.bykv.vk.openvk.preload.dq.d.d.d(type));
        Type type2 = d2[0];
        return new dq(iwVar, d2[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? q.iw : iwVar.dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq(type2)), d2[1], iwVar.dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq(d2[1])), this.f594d.dq(dqVar));
    }
}
