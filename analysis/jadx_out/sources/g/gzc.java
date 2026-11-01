package g;

/* loaded from: classes3.dex */
public final class gzc extends crn {
    private final int zzc;

    public gzc(byte[] bArr, int i) {
        super(bArr);
        cyb.e(0, i, bArr.length);
        this.zzc = i;
    }

    @Override // g.crn, g.cyb
    public final byte a(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(awf.ac(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(tn.t(i, i2, "Index > length: ", ", "));
    }

    @Override // g.crn, g.cyb
    public final byte b(int i) {
        return this.zza[i];
    }

    @Override // g.crn, g.cyb
    public final int c() {
        return this.zzc;
    }
}
