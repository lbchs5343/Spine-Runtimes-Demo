package g;

import com.google.android.gms.internal.ads.zzacv;
import com.google.android.gms.internal.ads.zzed;

/* loaded from: classes3.dex */
public final class et {

    /* renamed from: a, reason: collision with root package name */
    public int f16124a;

    /* renamed from: b, reason: collision with root package name */
    public long f16125b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16126c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16127d;

    /* renamed from: e, reason: collision with root package name */
    public final zzed f16128e;

    /* renamed from: f, reason: collision with root package name */
    public int f16129f;

    /* renamed from: g, reason: collision with root package name */
    public int f16130g;
    public int h;
    public final zzed i;

    public et(zzed zzedVar, zzed zzedVar2, boolean z) {
        this.i = zzedVar;
        this.f16128e = zzedVar2;
        this.f16126c = z;
        zzedVar2.zzL(12);
        this.f16127d = zzedVar2.zzp();
        zzedVar.zzL(12);
        this.f16129f = zzedVar.zzp();
        zzacv.zzb(zzedVar.zzg() == 1, "first_chunk must be 1");
        this.f16130g = -1;
    }

    public final boolean j() {
        int i = this.f16130g + 1;
        this.f16130g = i;
        if (i == this.f16127d) {
            return false;
        }
        boolean z = this.f16126c;
        zzed zzedVar = this.f16128e;
        this.f16125b = z ? zzedVar.zzw() : zzedVar.zzu();
        if (this.f16130g == this.f16124a) {
            zzed zzedVar2 = this.i;
            this.h = zzedVar2.zzp();
            zzedVar2.zzM(4);
            int i2 = this.f16129f - 1;
            this.f16129f = i2;
            this.f16124a = i2 > 0 ? (-1) + zzedVar2.zzp() : -1;
        }
        return true;
    }
}
