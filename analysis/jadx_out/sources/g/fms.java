package g;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class fms implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bsa f17039a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17040b;

    /* renamed from: c, reason: collision with root package name */
    public int f17041c = 0;

    public /* synthetic */ fms(bsa bsaVar, int i) {
        this.f17040b = i;
        this.f17039a = bsaVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f17040b) {
            case 0:
                if (this.f17041c < this.f17039a.f12108a.length()) {
                }
                break;
            default:
                if (this.f17041c < this.f17039a.f12108a.length()) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        switch (this.f17040b) {
            case 0:
                int i = this.f17041c;
                if (i >= this.f17039a.f12108a.length()) {
                    throw new NoSuchElementException();
                }
                this.f17041c = i + 1;
                return new bsa(String.valueOf(i));
            default:
                int i2 = this.f17041c;
                bsa bsaVar = this.f17039a;
                if (i2 >= bsaVar.f12108a.length()) {
                    throw new NoSuchElementException();
                }
                String str = bsaVar.f12108a;
                this.f17041c = i2 + 1;
                return new bsa(String.valueOf(str.charAt(i2)));
        }
    }
}
