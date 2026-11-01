package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfzo;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class az extends zzfzo {

    /* renamed from: a, reason: collision with root package name */
    public final transient Object[] f11096a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f11097b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f11098c;

    public az(int i, int i2, Object[] objArr) {
        this.f11096a = objArr;
        this.f11097b = i;
        this.f11098c = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzfwq.zza(i, this.f11098c, "index");
        Object obj = this.f11096a[i + i + this.f11097b];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11098c;
    }
}
