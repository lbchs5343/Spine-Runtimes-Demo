package g;

import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgyc;
import com.google.android.gms.internal.ads.zzgzk;
import com.google.android.gms.internal.ads.zzhai;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class eub implements gli {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyc f16166a;

    public eub(zzgyc zzgycVar) {
        Charset charset = zzgzk.f8688a;
        this.f16166a = zzgycVar;
        zzgycVar.f8675c = this;
    }

    public final void b(int i, Object obj, ah ahVar) {
        zzgyc zzgycVar = this.f16166a;
        zzgycVar.zzs(i, 3);
        ahVar.i((zzhai) obj, zzgycVar.f8675c);
        zzgycVar.zzs(i, 4);
    }

    public final void c(int i, Object obj) {
        boolean z = obj instanceof zzgxp;
        zzgyc zzgycVar = this.f16166a;
        if (z) {
            zzgycVar.zzp(i, (zzgxp) obj);
        } else {
            zzgycVar.zzo(i, (zzhai) obj);
        }
    }
}
