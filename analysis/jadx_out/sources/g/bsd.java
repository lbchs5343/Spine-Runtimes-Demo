package g;

import android.content.Context;
import java.io.IOException;

/* loaded from: classes.dex */
public final class bsd implements brb {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f12109b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f12110c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f12111d;

    public bsd(Context context, String str, long j) {
        this.f12109b = str;
        this.f12110c = context;
        this.f12111d = j;
    }

    @Override // g.brb
    public final enb a(dpe dpeVar) {
        fzn v = dpeVar.f14583c.v();
        v.n("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        v.n("Accept-Language", "zh-CN,zh;q=0.8,en;q=0.6");
        v.n("User-Agent", this.f12109b);
        if (acw.bj(this.f12110c)) {
            v.n("Cache-Control", "max-age=0");
        } else {
            long j = this.f12111d;
            if (j >= 0) {
                bjl bjlVar = bjl.f11699a;
                bff.p(bjlVar, "cacheControl");
                String bjlVar2 = bjlVar.toString();
                if (bjlVar2.length() == 0) {
                    ((ais) v.f17730e).b("Cache-Control");
                } else {
                    v.n("Cache-Control", bjlVar2);
                }
                v.n("Cache-Control", "public, only-if-cached, max-stale=" + j);
            }
        }
        try {
            return dpeVar.k(v.x());
        } catch (Throwable th) {
            if (th instanceof IOException) {
                throw th;
            }
            throw new IOException(th);
        }
    }
}
