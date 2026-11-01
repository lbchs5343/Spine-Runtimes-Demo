package g;

import com.google.android.gms.internal.ads.zzfwq;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class gae implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public int f17783a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ esx f17784b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17785c;

    /* renamed from: d, reason: collision with root package name */
    public int f17786d;

    /* renamed from: e, reason: collision with root package name */
    public int f17787e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ esx f17788f;

    public gae(esx esxVar, int i) {
        this.f17785c = i;
        this.f17788f = esxVar;
        this.f17784b = esxVar;
        this.f17786d = esxVar.f16115f;
        this.f17787e = esxVar.isEmpty() ? -1 : 0;
        this.f17783a = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17787e >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj;
        esx esxVar = this.f17784b;
        if (esxVar.f16115f != this.f17786d) {
            throw new ConcurrentModificationException();
        }
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f17787e;
        this.f17783a = i;
        int i2 = this.f17785c;
        esx esxVar2 = this.f17788f;
        switch (i2) {
            case 0:
                Object obj2 = esx.f16110a;
                obj = esxVar2.q()[i];
                break;
            case 1:
                obj = new eyw(esxVar2, i);
                break;
            default:
                Object obj3 = esx.f16110a;
                obj = esxVar2.s()[i];
                break;
        }
        int i3 = this.f17787e + 1;
        if (i3 >= esxVar.j) {
            i3 = -1;
        }
        this.f17787e = i3;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        esx esxVar = this.f17784b;
        if (esxVar.f16115f != this.f17786d) {
            throw new ConcurrentModificationException();
        }
        zzfwq.zzl(this.f17783a >= 0, "no calls to next() since the last call to remove()");
        this.f17786d += 32;
        esxVar.remove(esxVar.q()[this.f17783a]);
        this.f17787e--;
        this.f17783a = -1;
    }
}
