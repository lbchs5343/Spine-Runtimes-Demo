package com.google.android.gms.internal.ads;

import g.awf;
import g.dcp;
import g.enu;
import g.fso;
import g.he;
import g.tn;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class zzgxp implements Iterable<Byte>, Serializable {
    public static final zzgxp zzb = new ah(zzgzk.zzb);
    private int zza = 0;

    static {
        int i = enu.f15875a;
    }

    public static int n(int i, int i2, int i3) {
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

    public static void o(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(tn.t(i, i2, "Index > length: ", ", "));
            }
            throw new ArrayIndexOutOfBoundsException(awf.ac(i, "Index < 0: "));
        }
    }

    public static zzgxp p(Iterator it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(awf.b(i, "length (", ") must be >= 1"));
        }
        if (i == 1) {
            return (zzgxp) it.next();
        }
        int i2 = i >>> 1;
        zzgxp p = p(it, i2);
        zzgxp p2 = p(it, i - i2);
        if (he.UNDEFINED_ITEM_ID - p.zzd() >= p2.zzd()) {
            return t.b(p, p2);
        }
        throw new IllegalArgumentException(tn.t(p.zzd(), p2.zzd(), "ByteString would be too long: ", "+"));
    }

    public static zzgxn zzt() {
        return new zzgxn();
    }

    public static zzgxp zzu(Iterable iterable) {
        int size;
        if (iterable instanceof Collection) {
            size = ((Collection) iterable).size();
        } else {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? zzb : p(iterable.iterator(), size);
    }

    public static zzgxp zzv(byte[] bArr, int i, int i2) {
        n(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new ah(bArr2);
    }

    public static zzgxp zzw(String str) {
        return new ah(str.getBytes(zzgzk.f8688a));
    }

    public abstract boolean equals(Object obj);

    public abstract int f(int i, int i2, int i3);

    public abstract int g();

    public abstract byte h(int i);

    public final int hashCode() {
        int i = this.zza;
        if (i == 0) {
            int zzd = zzd();
            i = m(zzd, 0, zzd);
            if (i == 0) {
                i = 1;
            }
            this.zza = i;
        }
        return i;
    }

    public abstract boolean i();

    public abstract String j(Charset charset);

    public abstract void k(zzgyc zzgycVar);

    public abstract void l(int i, byte[] bArr, int i2, int i3);

    public abstract int m(int i, int i2, int i3);

    public final int q() {
        return this.zza;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int zzd = zzd();
        String s = zzd() <= 50 ? fso.s(this) : fso.s(zzk(0, 47)).concat("...");
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(zzd);
        sb.append(" contents=\"");
        return awf.ad(sb, s, "\">");
    }

    public final byte[] zzA() {
        int zzd = zzd();
        if (zzd == 0) {
            return zzgzk.zzb;
        }
        byte[] bArr = new byte[zzd];
        l(0, bArr, 0, zzd);
        return bArr;
    }

    public abstract byte zza(int i);

    public abstract int zzd();

    public abstract zzgxp zzk(int i, int i2);

    public abstract zzgxv zzl();

    public abstract ByteBuffer zzn();

    public abstract boolean zzp();

    @Override // java.lang.Iterable
    /* renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public zzgxk iterator() {
        return new dcp(this);
    }

    public final String zzx() {
        return zzd() == 0 ? "" : j(zzgzk.f8688a);
    }

    @Deprecated
    public final void zzz(byte[] bArr, int i, int i2, int i3) {
        n(0, i3, zzd());
        n(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            l(0, bArr, i2, i3);
        }
    }
}
