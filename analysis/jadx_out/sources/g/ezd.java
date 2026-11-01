package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class ezd {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f16401a = {0, 0, 1};

    /* renamed from: b, reason: collision with root package name */
    public int f16402b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f16403c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16404d;

    /* renamed from: e, reason: collision with root package name */
    public int f16405e;

    /* renamed from: f, reason: collision with root package name */
    public int f16406f;

    public final void g(byte[] bArr, int i, int i2) {
        if (this.f16404d) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f16403c;
            int length = bArr2.length;
            int i4 = this.f16406f + i3;
            if (length < i4) {
                this.f16403c = Arrays.copyOf(bArr2, i4 + i4);
            }
            System.arraycopy(bArr, i, this.f16403c, this.f16406f, i3);
            this.f16406f += i3;
        }
    }
}
