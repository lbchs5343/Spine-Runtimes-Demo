package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class fzy implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f17754a;

    /* renamed from: b, reason: collision with root package name */
    public int f17755b;

    /* renamed from: c, reason: collision with root package name */
    public int f17756c;

    /* renamed from: d, reason: collision with root package name */
    public final CharSequence f17757d;

    /* renamed from: e, reason: collision with root package name */
    public int f17758e;

    public fzy(CharSequence charSequence) {
        bff.p(charSequence, "string");
        this.f17757d = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2;
        int i3 = this.f17758e;
        if (i3 != 0) {
            return i3 == 1;
        }
        if (this.f17756c < 0) {
            this.f17758e = 2;
            return false;
        }
        CharSequence charSequence = this.f17757d;
        int length = charSequence.length();
        int length2 = charSequence.length();
        for (int i4 = this.f17754a; i4 < length2; i4++) {
            char charAt = charSequence.charAt(i4);
            if (charAt == '\n' || charAt == '\r') {
                i = (charAt == '\r' && (i2 = i4 + 1) < charSequence.length() && charSequence.charAt(i2) == '\n') ? 2 : 1;
                length = i4;
                this.f17758e = 1;
                this.f17756c = i;
                this.f17755b = length;
                return true;
            }
        }
        i = -1;
        this.f17758e = 1;
        this.f17756c = i;
        this.f17755b = length;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f17758e = 0;
        int i = this.f17755b;
        int i2 = this.f17754a;
        this.f17754a = this.f17756c + i;
        return this.f17757d.subSequence(i2, i).toString();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
