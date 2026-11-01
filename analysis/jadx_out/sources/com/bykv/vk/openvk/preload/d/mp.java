package com.bykv.vk.openvk.preload.d;

/* loaded from: classes.dex */
final class mp<IN> implements d<IN> {
    private d<IN> dq;

    public mp(d<IN> dVar) {
        this.dq = dVar;
    }

    @Override // com.bykv.vk.openvk.preload.d.d
    public final <O> O d(Class<? extends p<?, O>> cls) {
        return (O) this.dq.d(cls);
    }

    @Override // com.bykv.vk.openvk.preload.d.d
    public final <I> I dq(Class<? extends p<I, ?>> cls) {
        return (I) this.dq.dq((Class) cls);
    }

    @Override // com.bykv.vk.openvk.preload.d.d
    public final Object dq(IN in) throws Exception {
        throw new UnsupportedOperationException();
    }
}
