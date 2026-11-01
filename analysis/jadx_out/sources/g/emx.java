package g;

import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhgf;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class emx implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15825a;

    /* renamed from: b, reason: collision with root package name */
    public final dup f15826b;

    public /* synthetic */ emx(dup dupVar, int i) {
        this.f15825a = i;
        this.f15826b = dupVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        switch (this.f15825a) {
            case 0:
                String lowerCase = this.f15826b.f14855a.toLowerCase(Locale.ROOT);
                zzhgf.zzb(lowerCase);
                return lowerCase;
            default:
                dup dupVar = this.f15826b;
                dupVar.getClass();
                HashSet hashSet = new HashSet();
                hashSet.add(dupVar.f14855a.toLowerCase(Locale.ROOT));
                return hashSet;
        }
    }
}
