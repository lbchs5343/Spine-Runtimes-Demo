package g;

import com.google.android.gms.internal.ads.zzgxk;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class fek extends bwr {

    /* renamed from: a, reason: collision with root package name */
    public final ky f16666a;

    /* renamed from: b, reason: collision with root package name */
    public zzgxk f16667b = c();

    public fek(com.google.android.gms.internal.ads.t tVar) {
        this.f16666a = new ky(tVar);
    }

    public final zzgxk c() {
        ky kyVar = this.f16666a;
        if (kyVar.hasNext()) {
            return kyVar.d().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16667b != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final byte zza() {
        zzgxk zzgxkVar = this.f16667b;
        if (zzgxkVar == null) {
            throw new NoSuchElementException();
        }
        byte zza = zzgxkVar.zza();
        if (!this.f16667b.hasNext()) {
            this.f16667b = c();
        }
        return zza;
    }
}
