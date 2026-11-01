package g;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class kf implements dle, tj, fbg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19539a;

    public /* synthetic */ kf(int i) {
        this.f19539a = i;
    }

    private final /* synthetic */ void e(ggu gguVar) {
    }

    private final /* synthetic */ void f(ggu gguVar) {
    }

    private final /* synthetic */ void g(ggu gguVar) {
    }

    private final /* synthetic */ void h(ggu gguVar) {
    }

    private final /* synthetic */ void i(ggu gguVar) {
    }

    private final /* synthetic */ void j(ggu gguVar) {
    }

    private final /* synthetic */ void k(ggu gguVar) {
    }

    private final /* synthetic */ void l(ggu gguVar) {
    }

    private final /* synthetic */ void m(ggu gguVar) {
    }

    private final /* synthetic */ void n(ggu gguVar) {
    }

    private final /* synthetic */ void o(ggu gguVar) {
    }

    private final /* synthetic */ void p(ggu gguVar) {
    }

    private final /* synthetic */ void q(ggu gguVar) {
    }

    private final /* synthetic */ void r(ggu gguVar) {
    }

    private final /* synthetic */ void s(ggu gguVar) {
    }

    private final /* synthetic */ void t(ggu gguVar) {
    }

    private final /* synthetic */ void u(ggu gguVar) {
    }

    private final /* synthetic */ void v(ggu gguVar) {
    }

    private final /* synthetic */ void w(ggu gguVar) {
    }

    private final /* synthetic */ void x(ggu gguVar) {
    }

    private final /* synthetic */ void y(ggu gguVar) {
    }

    @Override // g.dle
    public void _bt(ggu gguVar) {
        switch (this.f19539a) {
            case 0:
                gguVar.i.w = gguVar.f18131g.ap();
                gguVar.n(1);
                gguVar.s();
                gguVar.i.p = 1L;
                break;
            case 1:
                gguVar.i.w = gguVar.f18131g.ai();
                gguVar.n(1);
                gguVar.s();
                gguVar.i.p = 1L;
                break;
            case 2:
                gguVar.n(0);
                gguVar.f18125a.f13265a = -1;
                break;
            case 3:
                gguVar.i.w = gguVar.f18131g.ai();
                gguVar.n(1);
                gguVar.s();
                break;
            case 4:
                gguVar.i.w = gguVar.f18131g.ai();
                gguVar.n(1);
                gguVar.s();
                break;
            case 5:
                gguVar.k(1, 0);
                gguVar.s();
                break;
            case 6:
                gguVar.n(0);
                break;
            case 7:
                gguVar.n(0);
                break;
            case 8:
                gguVar.k(1, 1);
                gguVar.s();
                break;
            case 9:
                gguVar.r(gguVar.f18131g.af());
                break;
            case 10:
                gguVar.s();
                gguVar.r(gguVar.f18131g.af());
                break;
            case 11:
                gguVar.k(1, 1);
                gguVar.s();
                break;
            case 12:
                gguVar.k(1, 2);
                gguVar.s();
                break;
            case 13:
                gguVar.n(2);
                gguVar.n(1);
                gguVar.s();
                break;
            case 14:
                gguVar.n(1);
                gguVar.n(0);
                gguVar.r(gguVar.f18131g.ar());
                break;
            case 15:
                gqc gqcVar = gguVar.f18131g;
                gguVar.i.w = gqcVar.ai();
                int ap = gqcVar.ap();
                fce fceVar = gguVar.i;
                fceVar.p = ap;
                fceVar.ad(ap + 1);
                while (ap > 0) {
                    gguVar.n(ap);
                    ap--;
                }
                gguVar.s();
                break;
            case 16:
                gguVar.k(1, 2);
                gguVar.s();
                break;
            case 17:
                gguVar.n(0);
                gguVar.n(2);
                gguVar.n(1);
                break;
            case 18:
                gguVar.n(0);
                gguVar.r(gguVar.f18131g.ar());
                break;
            case 19:
                gguVar.n(2);
                gguVar.n(1);
                gguVar.o();
                break;
            default:
                gguVar.k(1, 3);
                gguVar.s();
                break;
        }
    }

    @Override // g.dle
    public /* synthetic */ void _ct(ggu gguVar) {
        int i = this.f19539a;
    }

    @Override // g.fbg
    public Object apply(Object obj) {
        Cursor rawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
        try {
            ArrayList arrayList = new ArrayList();
            while (rawQuery.moveToNext()) {
                fpd d2 = ku.d();
                String string = rawQuery.getString(1);
                if (string == null) {
                    throw new NullPointerException("Null backendName");
                }
                d2.f17190f = string;
                d2.f17188d = eow.d(rawQuery.getInt(2));
                String string2 = rawQuery.getString(3);
                d2.f17187c = string2 == null ? null : Base64.decode(string2, 0);
                arrayList.add(d2.w());
            }
            return arrayList;
        } finally {
            rawQuery.close();
        }
    }

    @Override // g.tj
    public azo c(cmv cmvVar, gqc gqcVar) {
        switch (this.f19539a) {
            case 21:
                gkr gkrVar = cmvVar.f13144g;
                int ap = gqcVar.ap();
                ArrayList arrayList = new ArrayList(ap);
                for (int i = 0; i < ap; i++) {
                    arrayList.add(new bjc(gqcVar.ai(), gkrVar.r(gqcVar.ai())));
                }
                return new gvk(arrayList);
            case 22:
                return new om(cmvVar.f13144g.r(gqcVar.ai()));
            case 23:
                return new brn(cmvVar.f13144g.r(gqcVar.ai()));
            case 24:
                int ai = gqcVar.ai();
                HashMap hashMap = new HashMap(ai);
                for (int i2 = 0; i2 < ai; i2++) {
                    hashMap.put(Integer.valueOf(gqcVar.ai()), Integer.valueOf(gqcVar.ai()));
                }
                return new aqp(hashMap);
            case 25:
                gkr gkrVar2 = cmvVar.f13144g;
                int ai2 = gqcVar.ai();
                ArrayList arrayList2 = new ArrayList(ai2);
                for (int i3 = 0; i3 < ai2; i3++) {
                    int ai3 = gqcVar.ai();
                    arrayList2.add(new fqt(gkrVar2.r(gqcVar.ai()), gqcVar.ai(), null, ai3, gkrVar2.r(gqcVar.ai()), (gqcVar.ai() + ai3) - 1));
                }
                return new agr(arrayList2);
            default:
                gkr gkrVar3 = cmvVar.f13144g;
                int ai4 = gqcVar.ai();
                ArrayList arrayList3 = new ArrayList(ai4);
                for (int i4 = 0; i4 < ai4; i4++) {
                    int ai5 = gqcVar.ai();
                    arrayList3.add(new fqt(gkrVar3.r(gqcVar.ai()), gqcVar.ai(), gkrVar3.r(gqcVar.ai()), ai5, null, (gqcVar.ai() + ai5) - 1));
                }
                return new dtf(arrayList3);
        }
    }
}
