package g;

import com.google.android.gms.internal.ads.zzgbu;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class ckh extends zzgbu {

    /* renamed from: a, reason: collision with root package name */
    public final Object f13028a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f13029b;

    public ckh(Object obj) {
        this.f13028a = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f13029b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f13029b) {
            throw new NoSuchElementException();
        }
        this.f13029b = true;
        return this.f13028a;
    }
}
