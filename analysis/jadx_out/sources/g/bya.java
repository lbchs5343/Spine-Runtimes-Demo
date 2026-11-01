package g;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;

/* loaded from: classes3.dex */
public final class bya {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12427a;

    /* renamed from: b, reason: collision with root package name */
    public final cpu f12428b;

    public bya(Context context, cpu cpuVar) {
        this.f12427a = context;
        this.f12428b = cpuVar;
    }

    public final void c(awn awnVar) {
        qo qoVar = awnVar.f10978a;
        Context context = this.f12427a;
        zzbcn.zza(context);
        if (((Boolean) zzbel.zzc.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new efr(11, this, qoVar, false));
                return;
            }
        }
        try {
            this.f12428b.zzg(ao.ai(context, qoVar));
        } catch (RemoteException e2) {
            agd.f("Failed to load ad.", e2);
        }
    }
}
