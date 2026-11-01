package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import g.ajm;
import g.ajs;
import g.bez;
import g.brp;
import g.dlr;
import g.dnr;
import g.dtn;
import g.ehj;
import g.etm;
import g.eui;
import g.euu;
import g.fqv;
import g.gxi;
import g.iz;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f35c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f37e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f38f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f33a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final transient HashMap f34b = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f36d = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f39g = new Bundle();

    public final brp h(final String str, iz izVar, final ehj ehjVar, final bez bezVar) {
        euu lifecycle = izVar.getLifecycle();
        ajs ajsVar = (ajs) lifecycle;
        if (ajsVar.f10342g.b(fqv.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + izVar + " is attempting to register while current state is " + ajsVar.f10342g + ". LifecycleOwners must call register before they are STARTED.");
        }
        i(str);
        HashMap hashMap = this.f38f;
        eui euiVar = (eui) hashMap.get(str);
        if (euiVar == null) {
            euiVar = new eui(lifecycle);
        }
        ajm ajmVar = new ajm() { // from class: androidx.activity.result.ActivityResultRegistry$1
            @Override // g.ajm
            public final void b(iz izVar2, dtn dtnVar) {
                boolean equals = dtn.ON_START.equals(dtnVar);
                String str2 = str;
                a aVar = a.this;
                if (!equals) {
                    if (dtn.ON_STOP.equals(dtnVar)) {
                        aVar.f34b.remove(str2);
                        return;
                    } else {
                        if (dtn.ON_DESTROY.equals(dtnVar)) {
                            aVar.k(str2);
                            return;
                        }
                        return;
                    }
                }
                HashMap hashMap2 = aVar.f34b;
                Bundle bundle = aVar.f39g;
                HashMap hashMap3 = aVar.f36d;
                ehj ehjVar2 = ehjVar;
                bez bezVar2 = bezVar;
                hashMap2.put(str2, new dnr(ehjVar2, bezVar2));
                if (hashMap3.containsKey(str2)) {
                    Object obj = hashMap3.get(str2);
                    hashMap3.remove(str2);
                    bezVar2.v(obj);
                }
                etm etmVar = (etm) bundle.getParcelable(str2);
                if (etmVar != null) {
                    bundle.remove(str2);
                    bezVar2.v(ehjVar2.d(etmVar.getResultCode(), etmVar.getData()));
                }
            }
        };
        euiVar.f16179a.l(ajmVar);
        euiVar.f16180b.add(ajmVar);
        hashMap.put(str, euiVar);
        return new brp(this, str, ehjVar, 0);
    }

    public final void i(String str) {
        HashMap hashMap = this.f37e;
        if (((Integer) hashMap.get(str)) != null) {
            return;
        }
        dlr dlrVar = gxi.f18940c;
        int nextInt = gxi.f18941d.a().nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            Integer valueOf = Integer.valueOf(i);
            HashMap hashMap2 = this.f35c;
            if (!hashMap2.containsKey(valueOf)) {
                hashMap2.put(Integer.valueOf(i), str);
                hashMap.put(str, Integer.valueOf(i));
                return;
            } else {
                dlr dlrVar2 = gxi.f18940c;
                nextInt = gxi.f18941d.a().nextInt(2147418112);
            }
        }
    }

    public final boolean j(int i, int i2, Intent intent) {
        bez bezVar;
        String str = (String) this.f35c.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        dnr dnrVar = (dnr) this.f34b.get(str);
        if (dnrVar == null || (bezVar = dnrVar.f14488a) == null || !this.f33a.contains(str)) {
            this.f36d.remove(str);
            this.f39g.putParcelable(str, new etm(i2, intent));
            return true;
        }
        bezVar.v(dnrVar.f14489b.d(i2, intent));
        this.f33a.remove(str);
        return true;
    }

    public final void k(String str) {
        Integer num;
        if (!this.f33a.contains(str) && (num = (Integer) this.f37e.remove(str)) != null) {
            this.f35c.remove(num);
        }
        this.f34b.remove(str);
        HashMap hashMap = this.f36d;
        if (hashMap.containsKey(str)) {
            Objects.toString(hashMap.get(str));
            hashMap.remove(str);
        }
        Bundle bundle = this.f39g;
        if (bundle.containsKey(str)) {
            Objects.toString(bundle.getParcelable(str));
            bundle.remove(str);
        }
        HashMap hashMap2 = this.f38f;
        eui euiVar = (eui) hashMap2.get(str);
        if (euiVar != null) {
            ArrayList arrayList = euiVar.f16180b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                euiVar.f16179a.n((ajm) it.next());
            }
            arrayList.clear();
            hashMap2.remove(str);
        }
    }

    public abstract void l(int i, ehj ehjVar, Object obj);

    public final brp m(String str, ehj ehjVar, bez bezVar) {
        i(str);
        this.f34b.put(str, new dnr(ehjVar, bezVar));
        HashMap hashMap = this.f36d;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            bezVar.v(obj);
        }
        Bundle bundle = this.f39g;
        etm etmVar = (etm) bundle.getParcelable(str);
        if (etmVar != null) {
            bundle.remove(str);
            bezVar.v(ehjVar.d(etmVar.getResultCode(), etmVar.getData()));
        }
        return new brp(this, str, ehjVar, 1);
    }
}
