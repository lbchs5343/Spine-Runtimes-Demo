package com.bytedance.sdk.openadsdk.core.le.dq;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.utils.p;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private byte[] f3148d;
    int dq;
    private Bitmap ox;
    private List<Object> p;
    private Map<String, String> s;

    public d(Bitmap bitmap, int i) {
        this.f3148d = null;
        this.p = null;
        this.s = null;
        this.ox = bitmap;
        this.dq = i;
    }

    public d(byte[] bArr, int i) {
        this.ox = null;
        this.p = null;
        this.s = null;
        this.f3148d = bArr;
        this.dq = i;
    }

    public int d() {
        return this.dq;
    }

    public Bitmap dq() {
        return this.ox;
    }

    public byte[] ox() {
        try {
            if (this.f3148d == null) {
                this.f3148d = p.d(this.ox);
            }
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
        return this.f3148d;
    }

    public boolean p() {
        if (this.ox != null) {
            return true;
        }
        byte[] bArr = this.f3148d;
        return bArr != null && bArr.length > 0;
    }

    public boolean s() {
        byte[] bArr = this.f3148d;
        return bArr != null && bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70;
    }
}
