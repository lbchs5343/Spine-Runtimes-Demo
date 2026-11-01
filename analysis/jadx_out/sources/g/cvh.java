package g;

import com.google.android.gms.internal.ads.zzfzi;
import com.google.android.gms.internal.ads.zzfzj;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class cvh extends zzfzi {

    /* renamed from: d, reason: collision with root package name */
    public Object[] f13580d;

    /* renamed from: e, reason: collision with root package name */
    public int f13581e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13582f;

    public cvh(int i) {
        bfc.g(i, "initialCapacity");
        this.f13580d = new Object[i];
        this.f13581e = 0;
    }

    public final void g(int i) {
        int length = this.f13580d.length;
        int a2 = zzfzi.a(length, this.f13581e + i);
        if (a2 > length || this.f13582f) {
            this.f13580d = Arrays.copyOf(this.f13580d, a2);
            this.f13582f = false;
        }
    }

    public final cvh zza(Object obj) {
        obj.getClass();
        g(1);
        Object[] objArr = this.f13580d;
        int i = this.f13581e;
        this.f13581e = i + 1;
        objArr[i] = obj;
        return this;
    }

    public final zzfzi zzc(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            g(collection.size());
            if (collection instanceof zzfzj) {
                this.f13581e = ((zzfzj) collection).e(this.f13581e, this.f13580d);
                return this;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzb(it.next());
        }
        return this;
    }
}
