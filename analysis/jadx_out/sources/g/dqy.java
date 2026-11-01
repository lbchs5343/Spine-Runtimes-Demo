package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public final class dqy {

    /* renamed from: a, reason: collision with root package name */
    public float f14657a;

    /* renamed from: b, reason: collision with root package name */
    public int f14658b;

    /* renamed from: c, reason: collision with root package name */
    public int f14659c;

    /* renamed from: d, reason: collision with root package name */
    public float f14660d;

    public final void e(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bfv.j);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 1) {
                this.f14660d = obtainStyledAttributes.getFloat(index, this.f14660d);
            } else if (index == 0) {
                int i2 = obtainStyledAttributes.getInt(index, this.f14658b);
                this.f14658b = i2;
                this.f14658b = ebt.f15253a[i2];
            } else if (index == 4) {
                this.f14659c = obtainStyledAttributes.getInt(index, this.f14659c);
            } else if (index == 3) {
                this.f14657a = obtainStyledAttributes.getFloat(index, this.f14657a);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
