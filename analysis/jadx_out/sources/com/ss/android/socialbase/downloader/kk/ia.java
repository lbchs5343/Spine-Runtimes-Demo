package com.ss.android.socialbase.downloader.kk;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ia<K, T> extends LinkedHashMap<K, T> {
    private int dq;

    public ia() {
        this(4, 4);
    }

    public ia(int i, int i2) {
        this(i, i2, true);
    }

    public ia(int i, int i2, boolean z) {
        super(i, 0.75f, z);
        dq(i2);
    }

    public void dq(int i) {
        this.dq = i;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<K, T> entry) {
        return size() > this.dq;
    }
}
