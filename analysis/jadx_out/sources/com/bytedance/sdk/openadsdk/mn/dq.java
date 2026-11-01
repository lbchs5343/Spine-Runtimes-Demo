package com.bytedance.sdk.openadsdk.mn;

import android.util.SparseArray;
import com.bytedance.sdk.component.utils.ig;
import g.tn;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class dq implements ox {

    /* renamed from: d, reason: collision with root package name */
    private Object f3842d;
    private SparseArray<Method> dq = new SparseArray<>();

    @Override // com.bytedance.sdk.openadsdk.mn.ox
    public <T> T call(int i, Object... objArr) {
        Object obj;
        Method method = this.dq.get(i);
        if (method == null || (obj = this.f3842d) == null) {
            ig.d(dq(), "call method " + i + " failed for null ");
            return null;
        }
        try {
            return obj instanceof Class ? (T) method.invoke(null, objArr) : (T) method.invoke(obj, objArr);
        } catch (Throwable th) {
            String dq = dq();
            StringBuilder z = tn.z(i, "call method ", " failed: ");
            z.append(th.getMessage());
            ig.d(dq, z.toString());
            return null;
        }
    }

    public abstract String dq();

    @Override // com.bytedance.sdk.openadsdk.mn.ox
    public void dq(int i, Method method) {
        this.dq.put(i, method);
    }

    @Override // com.bytedance.sdk.openadsdk.mn.ox
    public void dq(Object obj) {
        this.f3842d = obj;
    }
}
