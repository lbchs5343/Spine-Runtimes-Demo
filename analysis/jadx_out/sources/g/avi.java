package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class avi {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f10916a = {0, 0, 1};

    /* renamed from: b, reason: collision with root package name */
    public byte[] f10917b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10918c;

    /* renamed from: d, reason: collision with root package name */
    public int f10919d;

    /* renamed from: e, reason: collision with root package name */
    public int f10920e;

    public final void f(byte[] bArr, int i, int i2) {
        if (this.f10918c) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f10917b;
            int length = bArr2.length;
            int i4 = this.f10919d + i3;
            if (length < i4) {
                this.f10917b = Arrays.copyOf(bArr2, i4 + i4);
            }
            System.arraycopy(bArr, i, this.f10917b, this.f10919d, i3);
            this.f10919d += i3;
        }
    }
}
