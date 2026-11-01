package g;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class eyc {

    /* renamed from: a, reason: collision with root package name */
    public final asu f16358a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16359b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16360c;

    /* renamed from: d, reason: collision with root package name */
    public final ByteBuffer f16361d;

    public eyc(String str, byte[] bArr, int i, int i2) {
        this.f16359b = i;
        this.f16360c = str;
        this.f16361d = ByteBuffer.wrap(bArr);
        this.f16358a = new asu(new dsg(this, i2));
    }

    public final String toString() {
        return this.f16360c;
    }
}
