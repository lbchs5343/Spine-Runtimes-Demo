package com.bytedance.sdk.component.iw.ox.dq;

import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ox<K, V> {

    /* renamed from: d, reason: collision with root package name */
    private int f1962d;
    private final LinkedHashMap<K, SoftReference<V>> dq;
    private int ia;
    private int iw;
    private int mn;
    private int ox;
    private int p;
    private int s;

    public ox(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.ox = i;
        this.dq = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int ox(K k, V v) {
        int d2 = d(k, v);
        if (d2 >= 0) {
            return d2;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public int d(K k, V v) {
        return 1;
    }

    public V d(K k) {
        return null;
    }

    public final V dq(K k) {
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                SoftReference<V> softReference = this.dq.get(k);
                if (softReference != null) {
                    v = softReference.get();
                    if (v != null) {
                        this.mn++;
                        return v;
                    }
                    this.dq.remove(k);
                } else {
                    v = null;
                }
                this.ia++;
                V d2 = d(k);
                if (d2 == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.s++;
                        SoftReference<V> put = this.dq.put(k, new SoftReference<>(d2));
                        if (put != null) {
                            v = put.get();
                        }
                        if (v != null) {
                            this.dq.put(k, put);
                        } else {
                            this.f1962d += ox(k, d2);
                        }
                    } finally {
                    }
                }
                if (v != null) {
                    return v;
                }
                dq(this.ox);
                return d2;
            } finally {
            }
        }
    }

    public final V dq(K k, V v) {
        V v2;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.p++;
                this.f1962d += ox(k, v);
                SoftReference<V> put = this.dq.put(k, new SoftReference<>(v));
                if (put != null) {
                    v2 = put.get();
                    if (v2 != null) {
                        this.f1962d -= ox(k, v2);
                    }
                } else {
                    v2 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        dq(this.ox);
        return v2;
    }

    public final void dq() {
        dq(-1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0054, code lost:
    
        android.util.Log.e("LruCache", "oom maybe occured, clear cache. size= " + r3.f1962d + ", maxSize: " + r4);
        r3.f1962d = 0;
        r3.dq.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x007a, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(int i) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.f1962d < 0 || (this.dq.isEmpty() && this.f1962d != 0)) {
                        break;
                    }
                    if (this.f1962d <= i) {
                        return;
                    }
                    Map.Entry<K, SoftReference<V>> next = this.dq.entrySet().iterator().next();
                    if (next == null) {
                        return;
                    }
                    K key = next.getKey();
                    SoftReference<V> value = next.getValue();
                    this.dq.remove(key);
                    if (value != null) {
                        this.f1962d -= ox(key, value.get());
                    }
                    this.iw++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final synchronized String toString() {
        int i;
        int i2;
        try {
            i = this.mn;
            i2 = this.ia + i;
        } catch (Throwable th) {
            throw th;
        }
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.ox), Integer.valueOf(this.mn), Integer.valueOf(this.ia), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
