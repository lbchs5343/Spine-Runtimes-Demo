package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class ggo {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseIntArray f18105a;

    /* renamed from: b, reason: collision with root package name */
    public String f18106b;

    /* renamed from: c, reason: collision with root package name */
    public float f18107c;

    /* renamed from: d, reason: collision with root package name */
    public float f18108d;

    /* renamed from: e, reason: collision with root package name */
    public int f18109e;

    /* renamed from: f, reason: collision with root package name */
    public float f18110f;

    /* renamed from: g, reason: collision with root package name */
    public int f18111g;
    public int h;
    public int i;
    public int j;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f18105a = sparseIntArray;
        sparseIntArray.append(3, 1);
        sparseIntArray.append(5, 2);
        sparseIntArray.append(9, 3);
        sparseIntArray.append(2, 4);
        sparseIntArray.append(1, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(4, 7);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(7, 9);
        sparseIntArray.append(6, 10);
    }

    public final void k(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bfv.f11478e);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            switch (f18105a.get(index)) {
                case 1:
                    this.f18108d = obtainStyledAttributes.getFloat(index, this.f18108d);
                    break;
                case 2:
                    this.i = obtainStyledAttributes.getInt(index, this.i);
                    break;
                case 3:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        String str = buj.j[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    obtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f18109e = ebt.g(obtainStyledAttributes, index, this.f18109e);
                    break;
                case 6:
                    this.h = obtainStyledAttributes.getInteger(index, this.h);
                    break;
                case 7:
                    this.f18107c = obtainStyledAttributes.getFloat(index, this.f18107c);
                    break;
                case 8:
                    this.j = obtainStyledAttributes.getInteger(index, this.j);
                    break;
                case 9:
                    this.f18110f = obtainStyledAttributes.getFloat(index, this.f18110f);
                    break;
                case 10:
                    int i2 = obtainStyledAttributes.peekValue(index).type;
                    if (i2 == 1) {
                        this.f18111g = obtainStyledAttributes.getResourceId(index, -1);
                        break;
                    } else if (i2 == 3) {
                        String string = obtainStyledAttributes.getString(index);
                        this.f18106b = string;
                        if (string.indexOf("/") > 0) {
                            this.f18111g = obtainStyledAttributes.getResourceId(index, -1);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        obtainStyledAttributes.getInteger(index, this.f18111g);
                        break;
                    }
            }
        }
        obtainStyledAttributes.recycle();
    }
}
