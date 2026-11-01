package g;

import android.os.Message;
import com.google.android.gms.internal.ads.zzdl;

/* loaded from: classes3.dex */
public final class cnz implements zzdl {

    /* renamed from: a, reason: collision with root package name */
    public Message f13212a;

    @Override // com.google.android.gms.internal.ads.zzdl
    public final void zza() {
        Message message = this.f13212a;
        message.getClass();
        message.sendToTarget();
        this.f13212a = null;
        em.c(this);
    }
}
