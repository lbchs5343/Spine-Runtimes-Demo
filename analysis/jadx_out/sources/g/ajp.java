package g;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ajp {

    /* renamed from: a, reason: collision with root package name */
    public dmm f10328a;

    /* renamed from: b, reason: collision with root package name */
    public f f10329b;

    /* renamed from: c, reason: collision with root package name */
    public cbh f10330c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f10331d;

    /* renamed from: e, reason: collision with root package name */
    public Object f10332e;

    /* renamed from: f, reason: collision with root package name */
    public dsk f10333f;

    /* renamed from: g, reason: collision with root package name */
    public JSONObject f10334g;
    public ArrayList h;
    public dlv i;
    public axs j;

    public ajp(Context context) {
        this.f10331d = context;
    }

    public static void k(dlv dlvVar, JSONObject jSONObject) {
        if (dlvVar == null) {
            return;
        }
        if (!(dlvVar instanceof eyh)) {
            dlvVar.dq(jSONObject);
            return;
        }
        dlvVar.dq(jSONObject);
        List<dlv> d2 = ((eyh) dlvVar).d();
        if (d2 == null || d2.size() <= 0) {
            return;
        }
        Iterator<dlv> it = d2.iterator();
        while (it.hasNext()) {
            k(it.next(), jSONObject);
        }
    }

    public final void l(dlv dlvVar) {
        List<dlv> d2;
        if (dlvVar == null) {
            return;
        }
        eyh bl = dlvVar.bl();
        if (bl != null) {
            ewk dq = bl.dq();
            Iterator<String> keys = dlvVar.le().keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String ae = dzm.ae(dlvVar.le().optString(next), this.f10334g);
                dlvVar.dq(next, ae);
                dq.dq(this.f10331d, next, ae);
            }
            dlvVar.dq(dq.dq());
        }
        if (!(dlvVar instanceof eyh) || (d2 = ((eyh) dlvVar).d()) == null || d2.size() <= 0) {
            return;
        }
        Iterator<dlv> it = d2.iterator();
        while (it.hasNext()) {
            l(it.next());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        if (r2 == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dlv m(abm abmVar, dlv dlvVar) {
        ArrayList k;
        ewk ewkVar = null;
        if (abmVar == null || abmVar.f9928f == null) {
            return null;
        }
        String str = abmVar.f9927e;
        gap gapVar = (gap) cco.f12644a.get(str);
        if (gapVar == null) {
            if (this.h == null) {
                this.h = new ArrayList();
            }
            this.h.add(str);
            str = "View";
            abmVar.f9927e = "View";
            gapVar = (gap) cco.f12644a.get("View");
        }
        Context context = this.f10331d;
        dlv dq = gapVar.dq(context);
        if (dq != null) {
            JSONObject jSONObject = abmVar.f9928f;
            dq.s(dzm.ae(abmVar.f9925c, this.f10334g));
            dq.iw(str);
            dq.d(jSONObject);
            dq.dq(abmVar);
            dq.ox(this.j.f11040g);
            dq.dq(this.f10328a);
            dq.dq(this.f10333f);
            Iterator<String> keys = jSONObject.keys();
            if (dlvVar instanceof eyh) {
                eyh eyhVar = (eyh) dlvVar;
                ewkVar = eyhVar.dq();
                dq.dq(eyhVar);
            }
            while (keys.hasNext()) {
                String next = keys.next();
                String ae = dzm.ae(jSONObject.optString(next), this.f10334g);
                dq.dq(next, ae);
                if (ewkVar != null) {
                    ewkVar.dq(context, next, ae);
                }
            }
            if (ewkVar != null) {
                dq.dq(ewkVar.dq());
            }
            if (dq instanceof eyh) {
                ArrayList arrayList = abmVar.f9924b;
                if (arrayList == null || arrayList.size() <= 0) {
                    if (TextUtils.equals(dq.op(), "RecyclerLayout") && (k = this.j.k()) != null && k.size() > 0) {
                        Iterator it = k.iterator();
                        while (it.hasNext()) {
                            dlv m = m((abm) it.next(), dq);
                            if (m != null && m.ce()) {
                                ((eyh) dq).dq(m);
                            }
                        }
                    }
                    return dq;
                }
                if (TextUtils.equals(dq.op(), "Swiper") && arrayList.size() != 1) {
                    Log.e("UGTemplateEngine", "Swiper must be only one widget");
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    dlv m2 = m((abm) it2.next(), dq);
                    if (m2 != null && !m2.by()) {
                        ((eyh) dq).dq(m2, m2.e());
                    }
                }
            }
            this.i = dq;
            return dq;
        }
        return null;
    }

    public final dlv n(JSONObject jSONObject) {
        axs axsVar = new axs(jSONObject, this.f10334g, (JSONObject) null);
        this.j = axsVar;
        cbh cbhVar = this.f10330c;
        if (cbhVar != null) {
            cbhVar.f12588b = (String) axsVar.f11039f;
        }
        dlv o = o(axsVar.p((JSONObject) axsVar.f11036a), null);
        this.i = o;
        return o;
    }

    public final dlv o(abm abmVar, dlv dlvVar) {
        ArrayList k;
        ewk ewkVar = null;
        if (abmVar == null || abmVar.f9928f == null) {
            return null;
        }
        String str = abmVar.f9927e;
        gap gapVar = (gap) cco.f12644a.get(str);
        if (gapVar == null) {
            if (this.h == null) {
                this.h = new ArrayList();
            }
            this.h.add(str);
            return null;
        }
        Context context = this.f10331d;
        dlv dq = gapVar.dq(context);
        if (dq == null) {
            return null;
        }
        dq.s(dzm.ae(abmVar.f9925c, this.f10334g));
        dq.iw(str);
        dq.d(abmVar.f9928f);
        dq.dq(abmVar);
        dq.dq(this.f10328a);
        if (dlvVar instanceof eyh) {
            eyh eyhVar = (eyh) dlvVar;
            dq.dq(eyhVar);
            ewkVar = eyhVar.dq();
        }
        Iterator<String> keys = abmVar.f9928f.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String ae = dzm.ae(abmVar.f9928f.optString(next), this.f10334g);
            dq.dq(next, ae);
            if (ewkVar != null) {
                ewkVar.dq(context, next, ae);
            }
        }
        if (dq instanceof eyh) {
            ArrayList arrayList = abmVar.f9924b;
            if (arrayList == null || arrayList.size() <= 0) {
                if (TextUtils.equals(dq.op(), "RecyclerLayout") && (k = this.j.k()) != null && k.size() > 0) {
                    Iterator it = k.iterator();
                    while (it.hasNext()) {
                        dlv o = o((abm) it.next(), dq);
                        if (o != null && o.ce()) {
                            ((eyh) dq).dq(o);
                        }
                    }
                }
                return dq;
            }
            if (TextUtils.equals(dq.op(), "Swiper") && arrayList.size() != 1) {
                Log.e("UGTemplateEngine", "Swiper must be only one widget");
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                dlv o2 = o((abm) it2.next(), dq);
                if (o2 != null && o2.ce()) {
                    ((eyh) dq).dq(o2);
                }
            }
        }
        if (ewkVar != null) {
            dq.dq(ewkVar.dq());
        }
        this.i = dq;
        return dq;
    }

    public final dlv p(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        this.f10334g = jSONObject2;
        this.j = new axs(jSONObject, jSONObject2, jSONObject3);
        dsk dskVar = new dsk();
        dskVar.f14713a = new HashMap();
        this.f10333f = dskVar;
        cbh cbhVar = this.f10330c;
        if (cbhVar != null) {
            cbhVar.f12588b = (String) this.j.f11039f;
        }
        axs axsVar = this.j;
        dlv m = m(axsVar.p((JSONObject) axsVar.f11036a), null);
        this.i = m;
        q(m);
        return this.i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [g.ahr, java.lang.Object] */
    public final void q(dlv dlvVar) {
        List<dlv> d2;
        if (dlvVar == 0) {
            return;
        }
        JSONObject le = dlvVar.le();
        Iterator<String> keys = le.keys();
        eyh bl = dlvVar.bl();
        ewk dq = bl != null ? bl.dq() : null;
        try {
            if (dlvVar.ji() && dlvVar.h() != null && dlvVar.h().f9923a != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("i18n", dlvVar.h().f9923a);
                this.f10334g.put("xNode", jSONObject);
            }
        } catch (Exception unused) {
        }
        while (keys.hasNext()) {
            String next = keys.next();
            String ae = dzm.ae(le.optString(next), this.f10334g);
            dlvVar.dq(next, ae);
            if (dq != null) {
                dq.dq(this.f10331d, next, ae);
            }
        }
        dlvVar.dq(this.f10329b);
        dlvVar.dq(this.f10330c);
        dlvVar.dq((ahr) this.f10332e);
        if ((dlvVar instanceof eyh) && (d2 = ((eyh) dlvVar).d()) != null && d2.size() > 0) {
            Iterator<dlv> it = d2.iterator();
            while (it.hasNext()) {
                q(it.next());
            }
        }
        if (dq != null) {
            dlvVar.dq(dq.dq());
        }
        dlvVar.p();
    }

    public final void r(JSONObject jSONObject) {
        this.f10334g = jSONObject;
        k(this.i, jSONObject);
        q(this.i);
    }

    public final void s(cyx cyxVar) {
        cbh cbhVar = new cbh();
        cbhVar.f12587a = cyxVar;
        axs axsVar = this.j;
        if (axsVar != null) {
            cbhVar.f12588b = (String) axsVar.f11039f;
        }
        this.f10330c = cbhVar;
    }
}
