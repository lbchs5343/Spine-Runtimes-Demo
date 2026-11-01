package g;

/* loaded from: classes.dex */
public final class adr {

    /* renamed from: a, reason: collision with root package name */
    public int f10053a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f10054b;

    /* renamed from: c, reason: collision with root package name */
    public int f10055c;

    /* renamed from: d, reason: collision with root package name */
    public int f10056d;

    public adr() {
        int highestOneBit = Integer.bitCount(8) != 1 ? Integer.highestOneBit(7) << 1 : 8;
        this.f10053a = highestOneBit - 1;
        this.f10054b = new int[highestOneBit];
    }

    public void e(int i) {
        int[] iArr = this.f10054b;
        int i2 = this.f10056d;
        iArr[i2] = i;
        int i3 = this.f10053a & (i2 + 1);
        this.f10056d = i3;
        int i4 = this.f10055c;
        if (i3 == i4) {
            int length = iArr.length;
            int i5 = length - i4;
            int i6 = length << 1;
            if (i6 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            int[] iArr2 = new int[i6];
            fuv.c(0, i4, length, iArr, iArr2);
            fuv.c(i5, 0, this.f10055c, this.f10054b, iArr2);
            this.f10054b = iArr2;
            this.f10055c = 0;
            this.f10056d = length;
            this.f10053a = i6 - 1;
        }
    }
}
