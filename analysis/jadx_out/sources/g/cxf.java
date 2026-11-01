package g;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class cxf implements dan, fum {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f13683a;

    public cxf(ByteBuffer byteBuffer, int i) {
        switch (i) {
            case 1:
                this.f13683a = byteBuffer.slice();
                break;
            default:
                this.f13683a = byteBuffer;
                byteBuffer.position(0);
                break;
        }
    }

    @Override // g.fum
    public void b(MessageDigest[] messageDigestArr, long j, int i) {
        ByteBuffer slice;
        synchronized (this.f13683a) {
            int i2 = (int) j;
            this.f13683a.position(i2);
            this.f13683a.limit(i2 + i);
            slice = this.f13683a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }

    public int c() {
        ByteBuffer byteBuffer = this.f13683a;
        return byteBuffer.limit() - byteBuffer.position();
    }

    @Override // g.fum
    public long zza() {
        return this.f13683a.capacity();
    }
}
