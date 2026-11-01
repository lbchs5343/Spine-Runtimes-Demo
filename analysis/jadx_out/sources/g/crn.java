package g;

/* loaded from: classes3.dex */
public class crn extends cyb {
    protected final byte[] zza;

    public crn(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // g.cyb
    public byte a(int i) {
        return this.zza[i];
    }

    @Override // g.cyb
    public byte b(int i) {
        return this.zza[i];
    }

    @Override // g.cyb
    public int c() {
        return this.zza.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof cyb) && c() == ((cyb) obj).c()) {
            if (c() == 0) {
                return true;
            }
            if (!(obj instanceof crn)) {
                return obj.equals(this);
            }
            crn crnVar = (crn) obj;
            int g2 = g();
            int g3 = crnVar.g();
            if (g2 == 0 || g3 == 0 || g2 == g3) {
                int c2 = c();
                if (c2 > crnVar.c()) {
                    throw new IllegalArgumentException("Length too large: " + c2 + c());
                }
                if (c2 > crnVar.c()) {
                    throw new IllegalArgumentException(tn.t(c2, crnVar.c(), "Ran off end of other: 0, ", ", "));
                }
                byte[] bArr = this.zza;
                byte[] bArr2 = crnVar.zza;
                int i = 0;
                int i2 = 0;
                while (i < c2) {
                    if (bArr[i] == bArr2[i2]) {
                        i++;
                        i2++;
                    }
                }
                return true;
            }
        }
        return false;
    }
}
