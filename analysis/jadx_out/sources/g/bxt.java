package g;

/* loaded from: classes.dex */
public final class bxt extends ape {

    /* renamed from: a, reason: collision with root package name */
    public static final int f12403a = ape.e("fcTL");

    /* renamed from: f, reason: collision with root package name */
    public short f12404f;

    /* renamed from: g, reason: collision with root package name */
    public int f12405g;
    public int h;
    public int i;
    public byte j;
    public byte k;
    public int l;
    public short m;

    @Override // g.ape
    public final void b(dbj dbjVar) {
        dbjVar.b();
        this.l = dbjVar.b();
        this.f12405g = dbjVar.b();
        this.h = dbjVar.b();
        this.i = dbjVar.b();
        ThreadLocal threadLocal = dbj.f13918a;
        byte[] bArr = (byte[]) threadLocal.get();
        if (bArr == null) {
            bArr = new byte[4];
            threadLocal.set(bArr);
        }
        dbjVar.ak(bArr, 0, 2);
        this.m = (short) (((bArr[0] & 255) << 8) | (bArr[1] & 255));
        ThreadLocal threadLocal2 = dbj.f13918a;
        byte[] bArr2 = (byte[]) threadLocal2.get();
        if (bArr2 == null) {
            bArr2 = new byte[4];
            threadLocal2.set(bArr2);
        }
        dbjVar.ak(bArr2, 0, 2);
        this.f12404f = (short) (((bArr2[0] & 255) << 8) | (bArr2[1] & 255));
        cxf cxfVar = (cxf) dbjVar.z;
        this.j = cxfVar.f13683a.get();
        this.k = cxfVar.f13683a.get();
    }
}
