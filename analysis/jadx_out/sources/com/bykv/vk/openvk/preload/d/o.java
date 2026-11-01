package com.bykv.vk.openvk.preload.d;

import com.bykv.vk.openvk.preload.d.ig;
import com.bykv.vk.openvk.preload.d.kk;
import java.util.List;

/* loaded from: classes.dex */
public abstract class o<IN, OUT> extends ig<IN, OUT> {
    private String ia;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.d.p
    public final Object dq(d<OUT> dVar, IN in) throws Throwable {
        new mp(dVar);
        String dq = dq((o<IN, OUT>) in);
        this.ia = dq;
        ig.dq dqVar = this.mn.get(dq);
        while (dqVar != null) {
            List<ia> list = dqVar.dq;
            try {
                Object dq2 = ox.dq(list, dVar.dq, this).dq((d) in);
                return !ig.dq(list) ? dq2 : dVar.dq((d<OUT>) dq2);
            } catch (kk.dq e2) {
                Throwable cause = e2.getCause();
                new mp(dVar);
                String dq3 = dq(in, cause, this.ia);
                this.ia = dq3;
                dqVar = this.mn.get(dq3);
            } catch (Throwable th) {
                new mp(dVar);
                String dq4 = dq(in, th, this.ia);
                this.ia = dq4;
                dqVar = this.mn.get(dq4);
            }
        }
        throw new IllegalArgumentException("can not found branch，branch name is：" + this.ia);
    }

    public abstract String dq(IN in);

    public abstract String dq(IN in, Throwable th, String str);
}
