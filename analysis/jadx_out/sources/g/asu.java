package g;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public final class asu {

    /* renamed from: a, reason: collision with root package name */
    public final int f10766a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10767b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10768c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10769d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10770e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10771f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10772g;
    public final int h;
    public final int i;

    public asu(dsg dsgVar) {
        ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
        byteBuffer.get(new byte[4]);
        byte[] bArr = new byte[3];
        byteBuffer.get(bArr);
        new String(bArr, StandardCharsets.US_ASCII);
        dsgVar.x(1);
        dsgVar.i();
        byteBuffer.get(new byte[20]);
        dsgVar.i();
        dsgVar.i();
        int i = byteBuffer.getInt();
        if (i != 305419896) {
            throw new beo(awf.d(new StringBuilder("Unexpected endian tag: 0x"), i));
        }
        dsgVar.i();
        dsgVar.i();
        int i2 = byteBuffer.getInt();
        dsgVar.i();
        this.h = byteBuffer.getInt();
        dsgVar.i();
        this.f10767b = byteBuffer.getInt();
        dsgVar.i();
        this.f10770e = byteBuffer.getInt();
        dsgVar.i();
        this.f10768c = byteBuffer.getInt();
        dsgVar.i();
        this.i = byteBuffer.getInt();
        this.f10769d = byteBuffer.getInt();
        this.f10772g = byteBuffer.getInt();
        dsgVar.i();
        dsgVar.i();
        dsgVar.m(i2);
        int i3 = byteBuffer.getInt();
        for (int i4 = 0; i4 < i3; i4++) {
            int q = dsgVar.q();
            dsgVar.x(6);
            int i5 = byteBuffer.getInt();
            if (q == 7) {
                this.f10766a = i5;
            } else if (q == 8) {
                this.f10771f = i5;
            }
        }
    }
}
