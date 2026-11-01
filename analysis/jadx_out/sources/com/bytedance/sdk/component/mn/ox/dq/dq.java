package com.bytedance.sdk.component.mn.ox.dq;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.mn.ox.dq {

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, com.bytedance.sdk.component.mn.dq> f2005d = new ConcurrentHashMap();
    private String dq;

    private dq(String str) {
        this.dq = str;
    }

    public static com.bytedance.sdk.component.mn.dq d(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_sdk_multi_sp";
        }
        Map<String, com.bytedance.sdk.component.mn.dq> map = f2005d;
        com.bytedance.sdk.component.mn.dq dqVar = map.get(str);
        if (dqVar != null) {
            return dqVar;
        }
        dq dqVar2 = new dq(str);
        map.put(str, dqVar2);
        return dqVar2;
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public float d(String str, float f2) {
        return d.dq(this.dq, str, f2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public int d(String str, int i) {
        return d.dq(this.dq, str, i);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public long d(String str, long j) {
        return d.dq(this.dq, str, j);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public String d(String str, String str2) {
        return d.d(this.dq, str, str2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Set<String> d(String str, Set<String> set) {
        return d.d(this.dq, str, set);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void d() {
        d.dq(this.dq);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public boolean d(String str, boolean z) {
        return d.dq(this.dq, str, z);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Map<String, ?> dq() {
        return d.d(this.dq);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str) {
        d.dq(this.dq, str);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, float f2) {
        d.dq(this.dq, str, Float.valueOf(f2));
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, int i) {
        d.dq(this.dq, str, Integer.valueOf(i));
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, long j) {
        d.dq(this.dq, str, Long.valueOf(j));
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, String str2) {
        d.dq(this.dq, str, str2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, Set<String> set) {
        d.dq(this.dq, str, set);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, boolean z) {
        d.dq(this.dq, str, Boolean.valueOf(z));
    }
}
