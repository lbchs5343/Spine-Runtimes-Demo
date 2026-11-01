package g;

import com.google.android.gms.internal.ads.zzgwc;
import com.google.android.gms.internal.ads.zzgwq;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;

/* loaded from: classes3.dex */
public final class hbt extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgwq f19195a;

    public hbt(zzgwq zzgwqVar) {
        this.f19195a = zzgwqVar;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        zzgwq zzgwqVar = this.f19195a;
        try {
            Mac mac = (Mac) zzgwc.zzb.zza(zzgwqVar.f8652c);
            mac.init(zzgwqVar.f8653d);
            return mac;
        } catch (GeneralSecurityException e2) {
            throw new IllegalStateException(e2);
        }
    }
}
