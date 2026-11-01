package com.bykv.vk.openvk.preload.d;

/* loaded from: classes.dex */
public final class ia {

    /* renamed from: d, reason: collision with root package name */
    com.bykv.vk.openvk.preload.d.d.dq f577d;
    Class<? extends p> dq;
    Object[] ox;

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        public com.bykv.vk.openvk.preload.d.d.dq f578d;
        Class<? extends p> dq;
        public Object[] ox;

        public final dq dq(Class<? extends p> cls) {
            if (cls == null) {
                throw new IllegalArgumentException("interceptor class == null");
            }
            this.dq = cls;
            return this;
        }

        public final ia dq() {
            return new ia(this, (byte) 0);
        }
    }

    private ia(dq dqVar) {
        Class<? extends p> cls = dqVar.dq;
        this.dq = cls;
        this.f577d = dqVar.f578d;
        this.ox = dqVar.ox;
        if (cls == null) {
            throw new IllegalArgumentException("Interceptor class == null");
        }
    }

    public /* synthetic */ ia(dq dqVar, byte b2) {
        this(dqVar);
    }
}
