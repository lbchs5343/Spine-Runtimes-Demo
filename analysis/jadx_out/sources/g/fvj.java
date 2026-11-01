package g;

import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzfzt;
import com.google.android.gms.internal.ads.zzgbu;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class fvj extends zzfzt {

    /* renamed from: a, reason: collision with root package name */
    public final transient fqf f17477a;

    /* renamed from: b, reason: collision with root package name */
    public final transient az f17478b;

    public fvj(fqf fqfVar, az azVar) {
        this.f17477a = fqfVar;
        this.f17478b = azVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f17477a.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int e(int i, Object[] objArr) {
        return this.f17478b.e(i, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.f17478b.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f17477a.j;
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj
    public final zzfzo zzd() {
        return this.f17478b;
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzj
    /* renamed from: zze */
    public final zzgbu iterator() {
        return this.f17478b.listIterator(0);
    }
}
