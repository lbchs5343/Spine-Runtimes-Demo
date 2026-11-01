package g;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzhfo;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class bve implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public final Object f12260b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12261c;

    /* renamed from: d, reason: collision with root package name */
    public int f12262d;

    public /* synthetic */ bve(int i, Iterable iterable) {
        this.f12261c = i;
        this.f12260b = iterable;
        this.f12262d = 0;
    }

    public /* synthetic */ bve(int i, Object obj) {
        this.f12261c = i;
        this.f12260b = obj;
    }

    public bve(gsi gsiVar) {
        this.f12261c = 2;
        this.f12260b = gsiVar.f18683a.iterator();
        this.f12262d = gsiVar.f18684b;
    }

    public bve(Object[] objArr) {
        this.f12261c = 1;
        bff.p(objArr, "array");
        this.f12260b = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f12261c) {
            case 0:
                return this.f12262d < ((dfj) this.f12260b).a();
            case 1:
                return this.f12262d < ((Object[]) this.f12260b).length;
            case 2:
                Iterator it = (Iterator) this.f12260b;
                while (this.f12262d > 0 && it.hasNext()) {
                    it.next();
                    this.f12262d--;
                }
                return it.hasNext();
            case 3:
                return this.f12262d < ((ViewGroup) this.f12260b).getChildCount();
            case 4:
                return this.f12262d < ((gwa) this.f12260b).s();
            default:
                int i = this.f12262d;
                zzhfo zzhfoVar = (zzhfo) this.f12260b;
                return i < zzhfoVar.f8728b.size() || zzhfoVar.f8729c.hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f12261c) {
            case 0:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                dfj dfjVar = (dfj) this.f12260b;
                int i = this.f12262d;
                this.f12262d = i + 1;
                return dfjVar.get(i);
            case 1:
                try {
                    Object[] objArr = (Object[]) this.f12260b;
                    int i2 = this.f12262d;
                    this.f12262d = i2 + 1;
                    return objArr[i2];
                } catch (ArrayIndexOutOfBoundsException e2) {
                    this.f12262d--;
                    throw new NoSuchElementException(e2.getMessage());
                }
            case 2:
                Iterator it = (Iterator) this.f12260b;
                while (this.f12262d > 0 && it.hasNext()) {
                    it.next();
                    this.f12262d--;
                }
                return it.next();
            case 3:
                ViewGroup viewGroup = (ViewGroup) this.f12260b;
                int i3 = this.f12262d;
                this.f12262d = i3 + 1;
                View childAt = viewGroup.getChildAt(i3);
                if (childAt != null) {
                    return childAt;
                }
                throw new IndexOutOfBoundsException();
            case 4:
                int i4 = this.f12262d;
                gwa gwaVar = (gwa) this.f12260b;
                if (i4 >= gwaVar.s()) {
                    throw new NoSuchElementException(awf.ac(this.f12262d, "Out of bounds index: "));
                }
                int i5 = this.f12262d;
                this.f12262d = i5 + 1;
                return gwaVar.g(i5);
            default:
                int i6 = this.f12262d;
                zzhfo zzhfoVar = (zzhfo) this.f12260b;
                if (i6 >= zzhfoVar.f8728b.size()) {
                    zzhfoVar.f8728b.add(zzhfoVar.f8729c.next());
                    return next();
                }
                int i7 = this.f12262d;
                this.f12262d = i7 + 1;
                return zzhfoVar.f8728b.get(i7);
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        switch (this.f12261c) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 3:
                ViewGroup viewGroup = (ViewGroup) this.f12260b;
                int i = this.f12262d - 1;
                this.f12262d = i;
                viewGroup.removeViewAt(i);
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
