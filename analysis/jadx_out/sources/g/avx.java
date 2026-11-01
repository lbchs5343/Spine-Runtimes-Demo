package g;

/* loaded from: classes.dex */
public final class avx {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f10948a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f10949b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10950c;

    public avx(int i, String[] strArr, int[] iArr) {
        this.f10948a = iArr;
        this.f10949b = strArr;
        this.f10950c = i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Catch:");
        String[] strArr = this.f10949b;
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(' ');
            sb.append(strArr[i]);
            sb.append("->");
            sb.append(String.format("0x%04x", Integer.valueOf(this.f10948a[i])));
        }
        int i2 = this.f10950c;
        if (i2 != -1) {
            sb.append(" all->");
            sb.append(String.format("0x%04x", Integer.valueOf(i2)));
        }
        return sb.toString();
    }
}
