package g;

import com.google.android.gms.internal.ads.zzfwf;
import com.google.android.gms.internal.ads.zzfwq;

/* loaded from: classes3.dex */
public final class czi extends bpu {
    public final /* synthetic */ dnb h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public czi(dnb dnbVar, CharSequence charSequence) {
        super(charSequence);
        this.h = dnbVar;
    }

    @Override // g.bpu
    public final int a(int i) {
        return i + 1;
    }

    @Override // g.bpu
    public final int b(int i) {
        CharSequence charSequence = this.f11978c;
        int length = charSequence.length();
        zzfwq.zzb(i, length, "index");
        while (i < length) {
            if (((zzfwf) this.h.f14452a).zzb(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
