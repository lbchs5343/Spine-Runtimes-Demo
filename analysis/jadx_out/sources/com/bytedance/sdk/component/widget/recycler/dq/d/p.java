package com.bytedance.sdk.component.widget.recycler.dq.d;

/* loaded from: classes.dex */
public final class p {

    public static class d<T> implements dq<T> {

        /* renamed from: d, reason: collision with root package name */
        private int f2268d;
        private final Object[] dq;

        public d(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.dq = new Object[i];
        }

        private boolean d(T t) {
            for (int i = 0; i < this.f2268d; i++) {
                if (this.dq[i] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.bytedance.sdk.component.widget.recycler.dq.d.p.dq
        public T dq() {
            int i = this.f2268d;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.dq;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f2268d = i - 1;
            return t;
        }

        @Override // com.bytedance.sdk.component.widget.recycler.dq.d.p.dq
        public boolean dq(T t) {
            if (d(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int i = this.f2268d;
            Object[] objArr = this.dq;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.f2268d = i + 1;
            return true;
        }
    }

    public interface dq<T> {
        T dq();

        boolean dq(T t);
    }
}
