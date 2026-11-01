package androidx.work;

import android.content.Context;
import g.bff;
import g.bgi;
import g.bmr;
import g.boj;
import g.cg;
import g.cgq;
import g.cro;
import g.dcy;
import g.ddy;
import g.dic;
import g.enj;
import g.eyx;
import g.fhq;

/* loaded from: classes.dex */
public abstract class CoroutineWorker extends cg {

    /* renamed from: a, reason: collision with root package name */
    public final WorkerParameters f328a;

    /* renamed from: b, reason: collision with root package name */
    public final ddy f329b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        bff.p(context, "appContext");
        bff.p(workerParameters, "params");
        this.f328a = workerParameters;
        this.f329b = ddy.f14030a;
    }

    public abstract Object c(enj enjVar);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [g.eyx] */
    /* JADX WARN: Type inference failed for: r2v2, types: [g.eyx] */
    /* JADX WARN: Type inference failed for: r2v4, types: [g.eyx] */
    @Override // g.cg
    public final dcy getForegroundInfoAsync() {
        fhq fhqVar;
        fhq fhqVar2 = new fhq();
        boj bojVar = this.f329b;
        bojVar.getClass();
        cgq cgqVar = cgq.f12850a;
        if (fhqVar2 != cgqVar) {
            boj _w = bojVar._w(fhqVar2.getKey());
            if (_w != cgqVar) {
                bmr bmrVar = bmr.j;
                dic dicVar = (dic) _w._x(bmrVar);
                if (dicVar == null) {
                    fhqVar = new eyx(_w, fhqVar2);
                } else {
                    boj _w2 = _w._w(bmrVar);
                    if (_w2 == cgqVar) {
                        fhqVar2 = new eyx(fhqVar2, dicVar);
                    } else {
                        fhqVar = new eyx(new eyx(_w2, fhqVar2), dicVar);
                    }
                }
                fhqVar2 = fhqVar;
            }
            bojVar = fhqVar2;
        }
        return cro.w(bojVar, new bgi(this, null));
    }

    @Override // g.cg
    public final dcy startWork() {
        ddy ddyVar = ddy.f14030a;
        boj bojVar = this.f329b;
        if (bff.n(bojVar, ddyVar)) {
            bojVar = this.f328a.k;
        }
        bff.e(bojVar, "if (coroutineContext != …rkerContext\n            }");
        return cro.w(bojVar._y(new fhq()), new enj(this, null));
    }
}
