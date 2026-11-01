package com.bytedance.sdk.component.mn.ox.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.mn.ox;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class d implements com.bytedance.sdk.component.mn.ox.dq {

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, com.bytedance.sdk.component.mn.dq> f2003d = new HashMap();
    private dq dq;

    private d(String str, Context context) {
        this.dq = dq.dq(str, context);
    }

    public static com.bytedance.sdk.component.mn.dq dq(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_sdk_multi_sp";
        }
        if (context == null) {
            context = ox.getContext();
        }
        Map<String, com.bytedance.sdk.component.mn.dq> map = f2003d;
        com.bytedance.sdk.component.mn.dq dqVar = map.get(str);
        if (dqVar != null) {
            return dqVar;
        }
        d dVar = new d(str, context);
        map.put(str, dVar);
        return dVar;
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public float d(String str, float f2) {
        return this.dq.d(str, f2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public int d(String str, int i) {
        return this.dq.d(str, i);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public long d(String str, long j) {
        return this.dq.d(str, j);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public String d(String str, String str2) {
        return this.dq.d(str, str2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Set<String> d(String str, Set<String> set) {
        return this.dq.d(str, set);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void d() {
        this.dq.d();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public boolean d(String str, boolean z) {
        return this.dq.d(str, z);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public Map<String, ?> dq() {
        return this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str) {
        this.dq.dq(str);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, float f2) {
        this.dq.dq(str, f2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, int i) {
        this.dq.dq(str, i);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, long j) {
        this.dq.dq(str, j);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, String str2) {
        this.dq.dq(str, str2);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, Set<String> set) {
        this.dq.dq(str, set);
    }

    @Override // com.bytedance.sdk.component.mn.dq
    public void dq(String str, boolean z) {
        this.dq.dq(str, z);
    }
}
