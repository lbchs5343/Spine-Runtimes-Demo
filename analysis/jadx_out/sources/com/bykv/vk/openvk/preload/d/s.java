package com.bykv.vk.openvk.preload.d;

/* loaded from: classes.dex */
public interface s {

    public static class dq implements s {
        @Override // com.bykv.vk.openvk.preload.d.s
        public final <T> T dq(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    <T> T dq(Class<T> cls);
}
