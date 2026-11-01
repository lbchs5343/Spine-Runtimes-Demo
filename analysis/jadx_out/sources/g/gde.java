package g;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class gde extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public int f17922a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f17923b;

    /* renamed from: c, reason: collision with root package name */
    public int f17924c;

    /* renamed from: d, reason: collision with root package name */
    public int f17925d;

    /* renamed from: e, reason: collision with root package name */
    public int f17926e;

    /* renamed from: f, reason: collision with root package name */
    public Iterator f17927f;

    /* renamed from: g, reason: collision with root package name */
    public long f17928g;
    public ByteBuffer h;
    public boolean i;

    public final void j(int i) {
        int i2 = this.f17926e + i;
        this.f17926e = i2;
        if (i2 == this.h.limit()) {
            k();
        }
    }

    public final boolean k() {
        this.f17925d++;
        Iterator it = this.f17927f;
        if (!it.hasNext()) {
            return false;
        }
        ByteBuffer byteBuffer = (ByteBuffer) it.next();
        this.h = byteBuffer;
        this.f17926e = byteBuffer.position();
        if (this.h.hasArray()) {
            this.i = true;
            this.f17923b = this.h.array();
            this.f17922a = this.h.arrayOffset();
        } else {
            this.i = false;
            this.f17928g = gbc.y(this.h);
            this.f17923b = null;
        }
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.f17925d == this.f17924c) {
            return -1;
        }
        if (this.i) {
            int i = this.f17923b[this.f17926e + this.f17922a] & 255;
            j(1);
            return i;
        }
        int l = gbc.f17849g.l(this.f17926e + this.f17928g) & 255;
        j(1);
        return l;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f17925d == this.f17924c) {
            return -1;
        }
        int limit = this.h.limit();
        int i3 = this.f17926e;
        int i4 = limit - i3;
        if (i2 > i4) {
            i2 = i4;
        }
        if (this.i) {
            System.arraycopy(this.f17923b, i3 + this.f17922a, bArr, i, i2);
            j(i2);
            return i2;
        }
        int position = this.h.position();
        this.h.position(this.f17926e);
        this.h.get(bArr, i, i2);
        this.h.position(position);
        j(i2);
        return i2;
    }
}
