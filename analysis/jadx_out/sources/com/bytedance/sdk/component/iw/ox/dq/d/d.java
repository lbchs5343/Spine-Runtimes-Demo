package com.bytedance.sdk.component.iw.ox.dq.d;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.iw.cd;

/* loaded from: classes.dex */
public class d implements cd {

    /* renamed from: d, reason: collision with root package name */
    private int f1950d;
    private int dq;
    private com.bytedance.sdk.component.iw.ox.dq.ox<String, Bitmap> ox;

    public d(int i, int i2) {
        this.f1950d = i;
        this.dq = i2;
        this.ox = new com.bytedance.sdk.component.iw.ox.dq.ox<String, Bitmap>(i) { // from class: com.bytedance.sdk.component.iw.ox.dq.d.d.1
            @Override // com.bytedance.sdk.component.iw.ox.dq.ox
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int d(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return d.dq(bitmap);
            }
        };
    }

    public static int dq(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public boolean d(String str) {
        return this.ox.dq((com.bytedance.sdk.component.iw.ox.dq.ox<String, Bitmap>) str) != null;
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public Bitmap dq(String str) {
        return this.ox.dq((com.bytedance.sdk.component.iw.ox.dq.ox<String, Bitmap>) str);
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public void dq(double d2) {
        this.ox.dq((int) (this.f1950d * d2));
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public boolean dq(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.ox.dq(str, bitmap);
        return true;
    }
}
