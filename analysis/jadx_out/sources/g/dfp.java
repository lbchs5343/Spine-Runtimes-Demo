package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dfp extends RecyclerView.dq {

    /* renamed from: a, reason: collision with root package name */
    public f f14096a;

    /* renamed from: b, reason: collision with root package name */
    public cal f14097b;

    /* renamed from: c, reason: collision with root package name */
    public String f14098c;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f14099e;

    /* renamed from: f, reason: collision with root package name */
    public edq f14100f;

    /* renamed from: g, reason: collision with root package name */
    public cyx f14101g;
    public HashMap h;
    public Context i;
    public boolean j;

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

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public final int dq() {
        return this.f14099e.size();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public final int dq(int i) {
        return ((co) this.f14099e.get(i)).f13214b;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public final RecyclerView.k dq(ViewGroup viewGroup, int i) {
        abm abmVar = (abm) this.h.get(Integer.valueOf(i));
        Context context = this.i;
        ajp ajpVar = new ajp(context);
        dlv o = ajpVar.o(abmVar, null);
        ajpVar.i = o;
        ajpVar.l(o);
        if (o == null) {
            return new aek(new View(context));
        }
        o.dq(new ViewGroup.LayoutParams(o.ir(), o.u()));
        cmr cmrVar = new cmr(this, o.kk());
        cmrVar.f13138a = o;
        return cmrVar;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public final void dq(RecyclerView.k kVar, int i) {
        co coVar;
        cal calVar;
        if (kVar == null || (coVar = (co) this.f14099e.get(i)) == null || !(kVar instanceof cmr)) {
            return;
        }
        JSONObject jSONObject = coVar.f13213a;
        cmr cmrVar = (cmr) kVar;
        cmrVar.f13138a.dq(new ViewGroup.LayoutParams(cmrVar.f13138a.ir(), cmrVar.f13138a.u()));
        k(cmrVar.f13138a, jSONObject);
        l(this.i, jSONObject, cmrVar.f13138a);
        if (i == 0 && (calVar = this.f14097b) != null && this.j) {
            this.j = false;
            calVar.dq(cmrVar.f13138a);
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public final void dq(RecyclerView.k kVar, int i, List list) {
        edq edqVar;
        if (list == null || list.isEmpty()) {
            dq(kVar, i);
            return;
        }
        for (Object obj : list) {
            if (obj != null && this.f14098c != null && TextUtils.equals(obj.toString(), this.f14098c.toString()) && (edqVar = this.f14100f) != null) {
                edqVar.dq(kVar, i);
            }
        }
    }

    public final void l(Context context, JSONObject jSONObject, dlv dlvVar) {
        if (dlvVar == null) {
            return;
        }
        if (dlvVar instanceof eyh) {
            dlvVar.dq(this.f14096a);
            dlvVar.dq(this.f14101g);
            dlvVar.d(true);
            dlvVar.p();
            List<dlv> d2 = ((eyh) dlvVar).d();
            if (d2 == null || d2.size() <= 0) {
                return;
            }
            Iterator<dlv> it = d2.iterator();
            while (it.hasNext()) {
                l(context, jSONObject, it.next());
            }
            return;
        }
        JSONObject le = dlvVar.le();
        Iterator<String> keys = le.keys();
        eyh bl = dlvVar.bl();
        ewk dq = bl != null ? bl.dq() : null;
        while (keys.hasNext()) {
            String next = keys.next();
            String ae = dzm.ae(le.optString(next), jSONObject);
            dlvVar.dq(next, ae);
            dlvVar.dq(this.f14096a);
            dlvVar.dq(this.f14101g);
            if (dq != null) {
                dq.dq(context, next, ae);
            }
        }
        dlvVar.d(true);
        dlvVar.p();
    }
}
