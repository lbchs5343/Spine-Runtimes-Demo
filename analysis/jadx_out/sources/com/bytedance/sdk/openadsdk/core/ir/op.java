package com.bytedance.sdk.openadsdk.core.ir;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class op<K, V> extends HashMap<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    public op<String, Object> dq(K k, V v) {
        put(k, v);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public op<String, Object> dq(Map<? extends K, ? extends V> map) {
        putAll(map);
        return this;
    }
}
