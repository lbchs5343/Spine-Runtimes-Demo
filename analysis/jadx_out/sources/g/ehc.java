package g;

import com.google.android.gms.internal.ads.zzfwi;
import com.google.android.gms.internal.ads.zzfxd;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class ehc implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CharSequence f15536a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzfxd f15537b;

    public ehc(zzfxd zzfxdVar, CharSequence charSequence) {
        this.f15536a = charSequence;
        this.f15537b = zzfxdVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        CharSequence charSequence = this.f15536a;
        zzfxd zzfxdVar = this.f15537b;
        return zzfxdVar.f8218a.y(zzfxdVar, charSequence);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        zzfwi.zzb(sb, this, ", ");
        sb.append(']');
        return sb.toString();
    }
}
