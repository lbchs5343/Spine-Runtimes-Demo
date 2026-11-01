package g;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzftv;
import com.google.android.gms.internal.ads.zzfvg;
import com.google.android.gms.internal.ads.zzfvh;
import com.google.android.gms.internal.ads.zzfvi;
import g.crk;
import g.fwu;

/* loaded from: classes3.dex */
public final class fkk extends zzftv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfvi f16933a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fia f16934b;

    public fkk(fia fiaVar, zzfvi zzfviVar) {
        this.f16934b = fiaVar;
        this.f16933a = zzfviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftw
    public final void zzb(Bundle bundle) {
        final fwu fwuVar;
        int i = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        zzfvg zzc = zzfvh.zzc();
        zzc.zzb(i);
        if (string != null) {
            zzc.zza(string);
        }
        this.f16933a.zza(zzc.zzc());
        if (i != 8157 || (fwuVar = this.f16934b.f16824c) == null) {
            return;
        }
        fia.f16823b.zzc("unbind LMD display overlay service", new Object[0]);
        fwuVar.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfvp
            @Override // java.lang.Runnable
            public final void run() {
                fwu fwuVar2 = fwu.this;
                if (fwuVar2.h != null) {
                    fwuVar2.i.zzc("Unbind from service.", new Object[0]);
                    Context context = fwuVar2.f17548g;
                    crk crkVar = fwuVar2.f17547f;
                    crkVar.getClass();
                    context.unbindService(crkVar);
                    fwuVar2.f17546e = false;
                    fwuVar2.h = null;
                    fwuVar2.f17547f = null;
                    synchronized (fwuVar2.f17544c) {
                        fwuVar2.f17544c.clear();
                    }
                }
            }
        });
    }
}
