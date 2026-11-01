package com.bykv.vk.openvk.preload.d;

import com.bykv.vk.openvk.preload.d.kk;

/* loaded from: classes.dex */
public abstract class no<IN, OUT> extends p<IN, OUT> {
    protected IN mn;

    private Object dq(d<OUT> dVar, Throwable th) throws Throwable {
        while (d(th)) {
            try {
                return dVar.dq((d<OUT>) dq());
            } catch (kk.dq e2) {
                th = e2.getCause();
            } catch (Throwable th2) {
                th = th2;
            }
        }
        throw th;
    }

    public abstract boolean d(Throwable th);

    public OUT dq() {
        return this.mn;
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final Object dq(d<OUT> dVar, IN in) throws Throwable {
        this.mn = in;
        try {
            return dVar.dq((d<OUT>) dq());
        } catch (kk.dq e2) {
            return dq((d) dVar, e2.getCause());
        } catch (Throwable th) {
            return dq((d) dVar, th);
        }
    }
}
