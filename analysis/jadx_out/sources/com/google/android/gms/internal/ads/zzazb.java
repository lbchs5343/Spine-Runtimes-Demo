package com.google.android.gms.internal.ads;

import g.agd;
import g.awf;
import g.cmo;
import g.ti;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzazb {

    /* renamed from: d, reason: collision with root package name */
    public int f4625d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4626e;

    /* renamed from: g, reason: collision with root package name */
    public final zzazq f4628g;
    public final int h;
    public final zzazy i;
    public final int m;
    public final int p;
    public final Object q = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4622a = new ArrayList();
    public final ArrayList l = new ArrayList();
    public final ArrayList n = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f4623b = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f4627f = 0;
    public int k = 0;

    /* renamed from: c, reason: collision with root package name */
    public String f4624c = "";
    public String j = "";
    public String o = "";

    public zzazb(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.h = i;
        this.m = i2;
        this.p = i3;
        this.f4626e = z;
        this.f4628g = new zzazq(i4);
        this.i = new zzazy(i5, i6, i7);
    }

    public static final String r(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            sb.append((String) arrayList.get(i));
            sb.append(' ');
            i++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzazb)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzazb) obj).f4624c;
        return str != null && str.equals(this.f4624c);
    }

    public final int hashCode() {
        return this.f4624c.hashCode();
    }

    public final void s(String str, boolean z, float f2, float f3, float f4, float f5) {
        if (str != null) {
            if (str.length() < this.p) {
                return;
            }
            synchronized (this.q) {
                try {
                    this.f4622a.add(str);
                    this.f4623b += str.length();
                    if (z) {
                        this.l.add(str);
                        this.n.add(new zzazm(f2, f3, f4, f5, this.l.size() - 1));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final String toString() {
        int i = this.f4627f;
        int i2 = this.f4625d;
        int i3 = this.f4623b;
        String r = r(this.f4622a);
        String r2 = r(this.l);
        String str = this.f4624c;
        String str2 = this.j;
        String str3 = this.o;
        StringBuilder z = awf.z(i, i2, "ActivityContent fetchId: ", " score:", " total_length:");
        z.append(i3);
        z.append("\n text: ");
        z.append(r);
        z.append("\n viewableText");
        awf.y(z, r2, "\n signture: ", str, "\n viewableSignture: ");
        return awf.f(str2, "\n viewableSignatureForVertical: ", str3, z);
    }

    public final String zzc() {
        return this.f4624c;
    }

    public final String zzd() {
        return this.o;
    }

    public final void zze() {
        synchronized (this.q) {
            this.k--;
        }
    }

    public final void zzf() {
        synchronized (this.q) {
            this.k++;
        }
    }

    public final void zzg(int i) {
        this.f4627f = i;
    }

    public final void zzh(String str, boolean z, float f2, float f3, float f4, float f5) {
        s(str, z, f2, f3, f4, f5);
    }

    public final void zzi(String str, boolean z, float f2, float f3, float f4, float f5) {
        s(str, z, f2, f3, f4, f5);
        synchronized (this.q) {
            try {
                if (this.k < 0) {
                    agd.c("ActivityContent: negative number of WebViews.");
                }
                zzj();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzj() {
        synchronized (this.q) {
            try {
                int i = this.f4623b;
                int i2 = this.f4627f;
                int i3 = this.m;
                if (!this.f4626e) {
                    i3 = (i2 * i3) + (i * this.h);
                }
                if (i3 > this.f4625d) {
                    this.f4625d = i3;
                    ti tiVar = ti.f20033a;
                    if (!((cmo) tiVar.f20034ab.zzi()).ba()) {
                        this.f4624c = this.f4628g.zza(this.f4622a);
                        this.j = this.f4628g.zza(this.l);
                    }
                    if (!((cmo) tiVar.f20034ab.zzi()).ag()) {
                        this.o = this.i.zza(this.l, this.n);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzk() {
        synchronized (this.q) {
            try {
                int i = this.f4623b;
                int i2 = this.f4627f;
                int i3 = this.m;
                if (!this.f4626e) {
                    i3 = (i2 * i3) + (i * this.h);
                }
                if (i3 > this.f4625d) {
                    this.f4625d = i3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.q) {
            z = this.k == 0;
        }
        return z;
    }
}
