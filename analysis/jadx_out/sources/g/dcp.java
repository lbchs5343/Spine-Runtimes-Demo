package g;

import com.google.android.gms.internal.ads.zzgxp;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class dcp extends bwr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgxp f13970a;

    /* renamed from: b, reason: collision with root package name */
    public int f13971b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final int f13972c;

    public dcp(zzgxp zzgxpVar) {
        this.f13970a = zzgxpVar;
        this.f13972c = zzgxpVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13971b < this.f13972c;
    }

    @Override // com.google.android.gms.internal.ads.zzgxk
    public final byte zza() {
        int i = this.f13971b;
        if (i >= this.f13972c) {
            throw new NoSuchElementException();
        }
        this.f13971b = i + 1;
        return this.f13970a.h(i);
    }
}
