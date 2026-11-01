package g;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class dyw {

    /* renamed from: a, reason: collision with root package name */
    public String[] f15100a;

    /* renamed from: b, reason: collision with root package name */
    public boolean[] f15101b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f15102c;

    /* renamed from: d, reason: collision with root package name */
    public int f15103d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f15104e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f15105f;

    /* renamed from: g, reason: collision with root package name */
    public int f15106g;
    public int h;
    public int[] i;
    public int[] j;
    public int k;
    public int[] l;

    public final void m(int i, boolean z) {
        int i2 = this.f15103d;
        int[] iArr = this.j;
        if (i2 >= iArr.length) {
            this.j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f15101b;
            this.f15101b = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.j;
        int i3 = this.f15103d;
        iArr2[i3] = i;
        boolean[] zArr2 = this.f15101b;
        this.f15103d = i3 + 1;
        zArr2[i3] = z;
    }

    public final void n(int i, float f2) {
        int i2 = this.f15106g;
        int[] iArr = this.f15102c;
        if (i2 >= iArr.length) {
            this.f15102c = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f15104e;
            this.f15104e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f15102c;
        int i3 = this.f15106g;
        iArr2[i3] = i;
        float[] fArr2 = this.f15104e;
        this.f15106g = i3 + 1;
        fArr2[i3] = f2;
    }

    public final void o(int i, int i2) {
        int i3 = this.k;
        int[] iArr = this.f15105f;
        if (i3 >= iArr.length) {
            this.f15105f = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.i;
            this.i = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f15105f;
        int i4 = this.k;
        iArr3[i4] = i;
        int[] iArr4 = this.i;
        this.k = i4 + 1;
        iArr4[i4] = i2;
    }

    public final void p(int i, String str) {
        int i2 = this.h;
        int[] iArr = this.l;
        if (i2 >= iArr.length) {
            this.l = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f15100a;
            this.f15100a = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.l;
        int i3 = this.h;
        iArr2[i3] = i;
        String[] strArr2 = this.f15100a;
        this.h = i3 + 1;
        strArr2[i3] = str;
    }
}
