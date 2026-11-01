package g;

/* loaded from: classes3.dex */
public class gto extends aki {
    protected final byte[] zza;

    public gto(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // g.aki
    public byte d(int i) {
        return this.zza[i];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof aki) && g() == ((aki) obj).g()) {
            if (g() == 0) {
                return true;
            }
            if (!(obj instanceof gto)) {
                return obj.equals(this);
            }
            gto gtoVar = (gto) obj;
            int e2 = e();
            int e3 = gtoVar.e();
            if (e2 == 0 || e3 == 0 || e2 == e3) {
                int g2 = g();
                if (g2 > gtoVar.g()) {
                    throw new IllegalArgumentException("Length too large: " + g2 + g());
                }
                if (g2 > gtoVar.g()) {
                    throw new IllegalArgumentException(tn.t(g2, gtoVar.g(), "Ran off end of other: 0, ", ", "));
                }
                byte[] bArr = this.zza;
                byte[] bArr2 = gtoVar.zza;
                int i = 0;
                int i2 = 0;
                while (i < g2) {
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

    @Override // g.aki
    public byte f(int i) {
        return this.zza[i];
    }

    @Override // g.aki
    public int g() {
        return this.zza.length;
    }
}
