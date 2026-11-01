package g;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class fmv {

    /* renamed from: a, reason: collision with root package name */
    public final long f17047a;

    /* renamed from: b, reason: collision with root package name */
    public final long f17048b;

    /* renamed from: c, reason: collision with root package name */
    public final String f17049c;

    /* renamed from: d, reason: collision with root package name */
    public final cde f17050d;

    /* renamed from: e, reason: collision with root package name */
    public final String f17051e;

    /* renamed from: f, reason: collision with root package name */
    public final String f17052f;

    public fmv(cyg cygVar, String str, String str2, String str3, long j, long j2, cde cdeVar) {
        ckd.bf(str2);
        ckd.bf(str3);
        ckd.k(cdeVar);
        this.f17049c = str2;
        this.f17051e = str3;
        this.f17052f = true == TextUtils.isEmpty(str) ? null : str;
        this.f17047a = j;
        this.f17048b = j2;
        if (j2 != 0 && j2 > j) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.e(bgm.t(str2), "Event created with reverse previous/current timestamps. appId, name", bgm.t(str3));
        }
        this.f17050d = cdeVar;
    }

    public fmv(cyg cygVar, String str, String str2, String str3, long j, Bundle bundle) {
        cde cdeVar;
        ckd.bf(str2);
        ckd.bf(str3);
        this.f17049c = str2;
        this.f17051e = str3;
        this.f17052f = true == TextUtils.isEmpty(str) ? null : str;
        this.f17047a = j;
        this.f17048b = 0L;
        if (bundle == null || bundle.isEmpty()) {
            cdeVar = new cde(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11518b.h("Param name can't be null");
                    it.remove();
                } else {
                    dkq dkqVar = cygVar.m;
                    cyg.ai(dkqVar);
                    Object be = dkqVar.be(bundle2.get(next), next);
                    if (be == null) {
                        bgm bgmVar2 = cygVar.z;
                        cyg.ak(bgmVar2);
                        bgmVar2.f11520g.i(cygVar.af.g(next), "Param value can't be null");
                        it.remove();
                    } else {
                        dkq dkqVar2 = cygVar.m;
                        cyg.ai(dkqVar2);
                        dkqVar2.az(bundle2, next, be);
                    }
                }
            }
            cdeVar = new cde(bundle2);
        }
        this.f17050d = cdeVar;
    }

    public final fmv g(cyg cygVar, long j) {
        return new fmv(cygVar, this.f17052f, this.f17049c, this.f17051e, this.f17047a, j, this.f17050d);
    }

    public final String toString() {
        return awf.ad(tn.o("Event{appId='", this.f17049c, "', name='", this.f17051e, "', params="), this.f17050d.toString(), "}");
    }
}
