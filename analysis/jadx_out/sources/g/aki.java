package g;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class aki implements Iterable, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final gto f10381a = new gto(cua.f13516b);
    private int zza = 0;

    static {
        int i = fvs.f17487a;
    }

    public static int b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(awf.b(i, "Beginning index: ", " < 0"));
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException(tn.t(i, i2, "Beginning index larger than ending index: ", ", "));
        }
        throw new IndexOutOfBoundsException(tn.t(i2, i3, "End index: ", " >= "));
    }

    public static gto c(int i, byte[] bArr, int i2) {
        b(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new gto(bArr2);
    }

    public abstract byte d(int i);

    public final int e() {
        return this.zza;
    }

    public abstract byte f(int i);

    public abstract int g();

    public final int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int g2 = g();
        byte[] bArr = ((gto) this).zza;
        int i2 = g2;
        for (int i3 = 0; i3 < g2; i3++) {
            i2 = (i2 * 31) + bArr[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.zza = i2;
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new dvu(this);
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int g2 = g();
        if (g() <= 50) {
            concat = bff.ap(this);
        } else {
            gto gtoVar = (gto) this;
            int b2 = b(0, 47, gtoVar.g());
            concat = bff.ap(b2 == 0 ? f10381a : new bgg(gtoVar.zza, b2)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(g2);
        sb.append(" contents=\"");
        return awf.ad(sb, concat, "\">");
    }
}
