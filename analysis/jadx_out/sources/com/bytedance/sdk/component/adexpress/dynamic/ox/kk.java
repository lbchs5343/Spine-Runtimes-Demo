package com.bytedance.sdk.component.adexpress.dynamic.ox;

import java.util.Arrays;

/* loaded from: classes.dex */
public class kk {

    /* renamed from: d, reason: collision with root package name */
    public float f1761d;
    public float dq;

    public kk(float f2, float f3) {
        this.dq = f2;
        this.f1761d = f3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            kk kkVar = (kk) obj;
            if (Float.compare(kkVar.dq, this.dq) == 0 && Float.compare(kkVar.f1761d, this.f1761d) == 0) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.dq), Float.valueOf(this.f1761d)});
    }
}
