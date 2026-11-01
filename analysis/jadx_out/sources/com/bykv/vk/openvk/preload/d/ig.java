package com.bykv.vk.openvk.preload.d;

import com.bykv.vk.openvk.preload.d.ia;
import g.awf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ig<IN, OUT> extends p<IN, OUT> {
    Map<String, dq> mn;

    public static final class d {

        /* renamed from: d, reason: collision with root package name */
        private com.bykv.vk.openvk.preload.d.d.dq f579d;
        private Map<String, dq> dq = new HashMap();

        public final ia dq(Class<? extends ig> cls) {
            ia.dq dq = new ia.dq().dq(cls);
            dq.ox = new Object[]{this.dq};
            dq.f578d = this.f579d;
            return dq.dq();
        }

        public final dq dq(String str) {
            if (this.dq.containsKey(str)) {
                throw new IllegalArgumentException("duplicated branch name");
            }
            dq dqVar = new dq();
            this.dq.put(str, dqVar);
            return dqVar;
        }
    }

    public static final class dq {
        List<ia> dq = new ArrayList();

        public final dq dq(ia iaVar) {
            this.dq.add(iaVar);
            return this;
        }

        public final dq dq(List<ia> list) {
            this.dq.addAll(list);
            return this;
        }
    }

    public static boolean dq(List<ia> list) {
        return !list.isEmpty() && ((ia) awf.q(1, list)).dq == iw.class;
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        Object obj;
        super.dq(objArr);
        if (objArr == null || objArr.length != 1 || (obj = objArr[0]) == null) {
            throw new IllegalStateException("args error");
        }
        try {
            this.mn = (Map) obj;
        } catch (ClassCastException e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
