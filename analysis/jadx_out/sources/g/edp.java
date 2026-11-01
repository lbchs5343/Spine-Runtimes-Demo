package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class edp {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseIntArray f15367a;

    /* renamed from: b, reason: collision with root package name */
    public int f15368b;

    /* renamed from: c, reason: collision with root package name */
    public float f15369c;

    /* renamed from: d, reason: collision with root package name */
    public float f15370d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15371e;

    /* renamed from: f, reason: collision with root package name */
    public float f15372f;

    /* renamed from: g, reason: collision with root package name */
    public float f15373g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public float n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f15367a = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
        sparseIntArray.append(11, 12);
    }

    public final void o(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bfv.f11479f);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (f15367a.get(index)) {
                case 1:
                    this.f15373g = obtainStyledAttributes.getFloat(index, this.f15373g);
                    break;
                case 2:
                    this.k = obtainStyledAttributes.getFloat(index, this.k);
                    break;
                case 3:
                    this.m = obtainStyledAttributes.getFloat(index, this.m);
                    break;
                case 4:
                    this.f15370d = obtainStyledAttributes.getFloat(index, this.f15370d);
                    break;
                case 5:
                    this.f15372f = obtainStyledAttributes.getFloat(index, this.f15372f);
                    break;
                case 6:
                    this.h = obtainStyledAttributes.getDimension(index, this.h);
                    break;
                case 7:
                    this.n = obtainStyledAttributes.getDimension(index, this.n);
                    break;
                case 8:
                    this.j = obtainStyledAttributes.getDimension(index, this.j);
                    break;
                case 9:
                    this.l = obtainStyledAttributes.getDimension(index, this.l);
                    break;
                case 10:
                    this.f15369c = obtainStyledAttributes.getDimension(index, this.f15369c);
                    break;
                case 11:
                    this.f15371e = true;
                    this.i = obtainStyledAttributes.getDimension(index, this.i);
                    break;
                case 12:
                    this.f15368b = ebt.g(obtainStyledAttributes, index, this.f15368b);
                    break;
            }
        }
        obtainStyledAttributes.recycle();
    }
}
