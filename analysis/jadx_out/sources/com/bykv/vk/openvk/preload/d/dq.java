package com.bykv.vk.openvk.preload.d;

import com.bykv.vk.openvk.preload.d.ig;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dq<IN, OUT> extends ig<IN, OUT> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.d.p
    public final Object dq(d<OUT> dVar, IN in) throws Throwable {
        new mp(dVar);
        String dq = dq((dq<IN, OUT>) in);
        ig.dq dqVar = this.mn.get(dq);
        if (dqVar == null) {
            throw new IllegalArgumentException("can not found branch, branch name is：".concat(String.valueOf(dq)));
        }
        List<ia> list = dqVar.dq;
        Object dq2 = ox.dq(list, ((kk) dVar).dq, this).dq((d) in);
        return !ig.dq(list) ? dq2 : dVar.dq((d<OUT>) dq2);
    }

    public abstract String dq(IN in);
}
