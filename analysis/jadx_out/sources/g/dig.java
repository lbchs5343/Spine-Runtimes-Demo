package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class dig extends cxm {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f14223a;

    public dig(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f14223a = bArr;
    }

    @Override // g.cxm
    public final byte[] e() {
        return this.f14223a;
    }
}
