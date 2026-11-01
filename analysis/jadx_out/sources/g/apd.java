package g;

import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final /* synthetic */ class apd implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10608a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dqu f10609b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f10610c;

    public /* synthetic */ apd(dqu dquVar, String str, int i) {
        this.f10608a = i;
        this.f10609b = dquVar;
        this.f10610c = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f10608a) {
            case 0:
                dqu dquVar = this.f10609b;
                ggz ggzVar = dquVar.f10133a.l;
                bsz.ag(ggzVar);
                String str = this.f10610c;
                cyo ay = ggzVar.ay(str);
                HashMap hashMap = new HashMap();
                hashMap.put("platform", "android");
                hashMap.put("package_name", str);
                ((cyg) dquVar.z).f13747e.n();
                hashMap.put("gmp_version", 73000L);
                if (ay != null) {
                    String ai = ay.ai();
                    if (ai != null) {
                        hashMap.put("app_version", ai);
                    }
                    hashMap.put("app_version_int", Long.valueOf(ay.ao()));
                    hashMap.put("dynamite_version", Long.valueOf(ay.au()));
                }
                return hashMap;
            case 1:
                ffm ffmVar = new ffm(this.f10609b, this.f10610c);
                csn csnVar = new csn("internal.remoteConfig", 0);
                csnVar.h.put("getValue", new auf(ffmVar));
                return csnVar;
            default:
                return new auf(new apd(this.f10609b, this.f10610c, 0));
        }
    }
}
