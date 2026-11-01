package com.bytedance.sdk.openadsdk.core;

import android.util.SparseArray;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class e {
    private static final SparseArray<HashMap> dq = new SparseArray<>();

    public static <T> T d(String str, Class<T> cls) {
        HashMap hashMap;
        if (cls == null || str == null || (hashMap = dq.get(cls.hashCode())) == null) {
            return null;
        }
        return (T) hashMap.remove(str);
    }

    public static <T> T dq(String str, Class<T> cls) {
        HashMap hashMap;
        if (cls == null || str == null || (hashMap = dq.get(cls.hashCode())) == null) {
            return null;
        }
        return (T) hashMap.get(str);
    }

    public static <T> void dq(String str) {
        int size = dq.size();
        for (int i = 0; i < size; i++) {
            SparseArray<HashMap> sparseArray = dq;
            HashMap hashMap = sparseArray.get(sparseArray.keyAt(i));
            if (hashMap != null) {
                hashMap.remove(str);
            }
        }
    }

    public static <T> void dq(String str, T t) {
        if (t == null) {
            return;
        }
        int hashCode = t.getClass().hashCode();
        SparseArray<HashMap> sparseArray = dq;
        HashMap hashMap = sparseArray.get(hashCode);
        if (hashMap == null) {
            hashMap = new HashMap();
            sparseArray.put(hashCode, hashMap);
        }
        hashMap.put(str, t);
    }
}
