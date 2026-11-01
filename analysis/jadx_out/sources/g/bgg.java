package g;

/* loaded from: classes3.dex */
public final class bgg extends gto {
    private final int zzc;

    public bgg(byte[] bArr, int i) {
        super(bArr);
        aki.b(0, i, bArr.length);
        this.zzc = i;
    }

    @Override // g.gto, g.aki
    public final byte d(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return ((gto) this).zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(awf.ac(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(tn.t(i, i2, "Index > length: ", ", "));
    }

    @Override // g.gto, g.aki
    public final byte f(int i) {
        return ((gto) this).zza[i];
    }

    @Override // g.gto, g.aki
    public final int g() {
        return this.zzc;
    }
}
