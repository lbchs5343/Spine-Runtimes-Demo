package g;

import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzbmx;
import com.google.android.gms.internal.ads.zzbnu;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ra implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbmx f19889a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fc f19890b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbnu f19891c;

    public ra(zzbnu zzbnuVar, zzbmx zzbmxVar, fc fcVar) {
        this.f19889a = zzbmxVar;
        this.f19890b = fcVar;
        this.f19891c = zzbnuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        agd.e("loadJavascriptEngine > /requestReload handler: Trying to acquire lock");
        synchronized (this.f19891c.f4890d) {
            try {
                agd.e("loadJavascriptEngine > /requestReload handler: Lock acquired");
                agd.k("JS Engine is requesting an update");
                if (this.f19891c.f4887a == 0) {
                    agd.k("Starting reload.");
                    zzbnu zzbnuVar = this.f19891c;
                    zzbnuVar.f4887a = 2;
                    zzbnuVar.i();
                }
                this.f19889a.zzr("/requestReload", (ra) this.f19890b.f16548e);
            } catch (Throwable th) {
                throw th;
            }
        }
        agd.e("loadJavascriptEngine > /requestReload handler: Lock released");
    }
}
