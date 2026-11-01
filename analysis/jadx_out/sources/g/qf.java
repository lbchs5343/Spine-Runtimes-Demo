package g;

import com.google.android.gms.internal.ads.zzbjq;
import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzbmx;
import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbnu;
import java.util.Map;

/* loaded from: classes3.dex */
public final class qf implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbnu f19851a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f19852b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbnt f19853c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzbmx f19854d;

    public qf(zzbnu zzbnuVar, long j, zzbnt zzbntVar, zzbmx zzbmxVar) {
        this.f19852b = j;
        this.f19853c = zzbntVar;
        this.f19854d = zzbmxVar;
        this.f19851a = zzbnuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        ti.f20033a.v.getClass();
        agd.e("onGmsg /jsLoaded. JsLoaded latency is " + (System.currentTimeMillis() - this.f19852b) + " ms.");
        agd.e("loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock");
        synchronized (this.f19851a.f4890d) {
            agd.e("loadJavascriptEngine > /jsLoaded handler: Lock acquired");
            if (this.f19853c.zze() != -1 && this.f19853c.zze() != 1) {
                this.f19851a.f4887a = 0;
                zzbmx zzbmxVar = this.f19854d;
                zzbmxVar.zzq("/log", zzbjq.zzg);
                zzbmxVar.zzq("/result", zzbjq.zzo);
                this.f19853c.zzi(this.f19854d);
                this.f19851a.h = this.f19853c;
                agd.e("Successfully loaded JS Engine.");
                agd.e("loadJavascriptEngine > /jsLoaded handler: Lock released");
                return;
            }
            agd.e("loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled");
        }
    }
}
