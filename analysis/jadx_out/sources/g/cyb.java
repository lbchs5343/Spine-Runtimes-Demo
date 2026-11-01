package g;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class cyb implements Iterable, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final crn f13731d = new crn(dhz.f14210b);
    private int zzc = 0;

    static {
        int i = dgm.f14138a;
    }

    public static int e(int i, int i2, int i3) {
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

    public static crn f(int i, byte[] bArr, int i2) {
        e(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new crn(bArr2);
    }

    public abstract byte a(int i);

    public abstract byte b(int i);

    public abstract int c();

    public final int g() {
        return this.zzc;
    }

    public final int hashCode() {
        int i = this.zzc;
        if (i != 0) {
            return i;
        }
        int c2 = c();
        byte[] bArr = ((crn) this).zza;
        int i2 = c2;
        for (int i3 = 0; i3 < c2; i3++) {
            i2 = (i2 * 31) + bArr[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.zzc = i2;
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
        int c2 = c();
        if (c() <= 50) {
            concat = bfc.af(this);
        } else {
            crn crnVar = (crn) this;
            int e2 = e(0, 47, crnVar.c());
            concat = bfc.af(e2 == 0 ? f13731d : new gzc(crnVar.zza, e2)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(c2);
        sb.append(" contents=\"");
        return awf.ad(sb, concat, "\">");
    }
}
