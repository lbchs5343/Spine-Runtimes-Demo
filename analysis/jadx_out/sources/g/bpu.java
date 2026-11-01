package g;

import com.google.android.gms.internal.ads.zzfwq;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public abstract class bpu implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f11978c;

    /* renamed from: f, reason: collision with root package name */
    public String f11981f;

    /* renamed from: g, reason: collision with root package name */
    public int f11982g = 2;

    /* renamed from: d, reason: collision with root package name */
    public int f11979d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f11980e = he.UNDEFINED_ITEM_ID;

    public bpu(CharSequence charSequence) {
        this.f11978c = charSequence;
    }

    public abstract int a(int i);

    public abstract int b(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int a2;
        zzfwq.zzk(this.f11982g != 4);
        int i = this.f11982g;
        int i2 = i - 1;
        String str = null;
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            return true;
        }
        if (i2 != 2) {
            this.f11982g = 4;
            int i3 = this.f11979d;
            while (true) {
                int i4 = this.f11979d;
                if (i4 == -1) {
                    this.f11982g = 3;
                    break;
                }
                int b2 = b(i4);
                CharSequence charSequence = this.f11978c;
                if (b2 == -1) {
                    b2 = charSequence.length();
                    this.f11979d = -1;
                    a2 = -1;
                } else {
                    a2 = a(b2);
                    this.f11979d = a2;
                }
                if (a2 == i3) {
                    int i5 = a2 + 1;
                    this.f11979d = i5;
                    if (i5 > charSequence.length()) {
                        this.f11979d = -1;
                    }
                } else {
                    if (i3 < b2) {
                        charSequence.charAt(i3);
                    }
                    if (i3 < b2) {
                        charSequence.charAt(b2 - 1);
                    }
                    int i6 = this.f11980e;
                    if (i6 == 1) {
                        b2 = charSequence.length();
                        this.f11979d = -1;
                        if (b2 > i3) {
                            charSequence.charAt(b2 - 1);
                        }
                    } else {
                        this.f11980e = i6 - 1;
                    }
                    str = charSequence.subSequence(i3, b2).toString();
                }
            }
            this.f11981f = str;
            if (this.f11982g != 3) {
                this.f11982g = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f11982g = 2;
        String str = this.f11981f;
        this.f11981f = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
