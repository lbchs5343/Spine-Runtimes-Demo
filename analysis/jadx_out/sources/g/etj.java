package g;

import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfzo;

/* loaded from: classes3.dex */
public final class etj extends zzfzo {

    /* renamed from: a, reason: collision with root package name */
    public final transient int f16146a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f16147b;
    final /* synthetic */ zzfzo zzc;

    public etj(zzfzo zzfzoVar, int i, int i2) {
        this.zzc = zzfzoVar;
        this.f16146a = i;
        this.f16147b = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final boolean d() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final Object[] f() {
        return this.zzc.f();
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int g() {
        return this.zzc.h() + this.f16146a + this.f16147b;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzfwq.zza(i, this.f16147b, "index");
        return this.zzc.get(i + this.f16146a);
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public final int h() {
        return this.zzc.h() + this.f16146a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16147b;
    }

    @Override // com.google.android.gms.internal.ads.zzfzo, java.util.List
    /* renamed from: zzh */
    public final zzfzo subList(int i, int i2) {
        zzfwq.zzj(i, i2, this.f16147b);
        zzfzo zzfzoVar = this.zzc;
        int i3 = this.f16146a;
        return zzfzoVar.subList(i + i3, i2 + i3);
    }
}
