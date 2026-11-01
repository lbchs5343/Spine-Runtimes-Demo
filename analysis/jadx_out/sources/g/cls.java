package g;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzeiv;
import com.google.android.gms.internal.ads.zzeiw;
import com.google.android.gms.internal.ads.zzeiz;
import com.google.android.gms.internal.ads.zzejc;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzgfa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class cls {

    /* renamed from: a, reason: collision with root package name */
    public final String f13083a;

    /* renamed from: b, reason: collision with root package name */
    public zzfet f13084b;

    /* renamed from: g, reason: collision with root package name */
    public zzeiw f13089g;
    public final int h;
    public final zzeiv j;
    public final zzgfa k;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f13088f = new HashMap();
    public final ArrayList i = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f13085c = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f13087e = new HashSet();
    public int l = he.UNDEFINED_ITEM_ID;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13086d = false;

    public cls(zzfff zzfffVar, zzeiv zzeivVar, zzgfa zzgfaVar) {
        this.h = zzfffVar.zzb.zzb.zzr;
        this.j = zzeivVar;
        this.k = zzgfaVar;
        this.f13083a = zzejc.n(zzfffVar);
        List list = zzfffVar.zzb.zza;
        for (int i = 0; i < list.size(); i++) {
            this.f13088f.put((zzfet) list.get(i), Integer.valueOf(i));
        }
        this.i.addAll(list);
    }

    public final synchronized boolean m() {
        if (!q(true)) {
            if (!u()) {
                return false;
            }
        }
        return true;
    }

    public final synchronized boolean n() {
        return this.k.isDone();
    }

    public final synchronized void o() {
        this.j.zzi(this.f13084b);
        zzeiw zzeiwVar = this.f13089g;
        if (zzeiwVar != null) {
            this.k.zzc(zzeiwVar);
        } else {
            this.k.zzd(new zzeiz(3, this.f13083a));
        }
    }

    public final synchronized zzfet p() {
        try {
            if (r()) {
                for (int i = 0; i < this.i.size(); i++) {
                    zzfet zzfetVar = (zzfet) this.i.get(i);
                    String str = zzfetVar.zzat;
                    if (!this.f13087e.contains(str)) {
                        if (zzfetVar.zzav) {
                            this.f13086d = true;
                        }
                        if (!TextUtils.isEmpty(str)) {
                            this.f13087e.add(str);
                        }
                        this.f13085c.add(zzfetVar);
                        return (zzfet) this.i.remove(i);
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean q(boolean z) {
        try {
            Iterator it = this.i.iterator();
            while (it.hasNext()) {
                zzfet zzfetVar = (zzfet) it.next();
                Integer num = (Integer) this.f13088f.get(zzfetVar);
                int intValue = num != null ? num.intValue() : he.UNDEFINED_ITEM_ID;
                if (z || !this.f13087e.contains(zzfetVar.zzat)) {
                    int i = this.l;
                    if (intValue < i) {
                        return true;
                    }
                    if (intValue > i) {
                        break;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean r() {
        if (this.f13086d) {
            return false;
        }
        if (!this.i.isEmpty() && ((zzfet) this.i.get(0)).zzav && !this.f13085c.isEmpty()) {
            return false;
        }
        if (!n()) {
            ArrayList arrayList = this.f13085c;
            if (arrayList.size() < this.h) {
                if (q(false)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final synchronized void s(zzfet zzfetVar) {
        this.f13086d = false;
        this.f13085c.remove(zzfetVar);
        this.f13087e.remove(zzfetVar.zzat);
        if (n() || m()) {
            return;
        }
        o();
    }

    public final synchronized void t(zzeiw zzeiwVar, zzfet zzfetVar) {
        this.f13086d = false;
        this.f13085c.remove(zzfetVar);
        if (n()) {
            zzeiwVar.zzr();
            return;
        }
        Integer num = (Integer) this.f13088f.get(zzfetVar);
        int intValue = num != null ? num.intValue() : he.UNDEFINED_ITEM_ID;
        if (intValue > this.l) {
            this.j.zzm(zzfetVar);
            return;
        }
        if (this.f13089g != null) {
            this.j.zzm(this.f13084b);
        }
        this.l = intValue;
        this.f13089g = zzeiwVar;
        this.f13084b = zzfetVar;
        if (m()) {
            return;
        }
        o();
    }

    public final synchronized boolean u() {
        try {
            Iterator it = this.f13085c.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) this.f13088f.get((zzfet) it.next());
                if ((num != null ? num.intValue() : he.UNDEFINED_ITEM_ID) < this.l) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }
}
