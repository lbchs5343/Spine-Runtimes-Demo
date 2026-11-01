package g;

import android.os.Handler;
import com.google.android.gms.internal.ads.zzaw;
import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdm;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzhd;
import com.google.android.gms.internal.ads.zzlw;
import com.google.android.gms.internal.ads.zzoj;
import com.google.android.gms.internal.ads.zzuj;
import com.google.android.gms.internal.ads.zzum;
import com.google.android.gms.internal.ads.zzup;
import com.google.android.gms.internal.ads.zzus;
import com.google.android.gms.internal.ads.zzut;
import com.google.android.gms.internal.ads.zzwj;
import g.feh;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class feh {

    /* renamed from: a, reason: collision with root package name */
    public final zzlw f16657a;

    /* renamed from: b, reason: collision with root package name */
    public zzhd f16658b;

    /* renamed from: e, reason: collision with root package name */
    public final com.google.android.gms.internal.ads.s f16661e;

    /* renamed from: f, reason: collision with root package name */
    public final zzoj f16662f;
    public final zzdm h;
    public boolean j;

    /* renamed from: d, reason: collision with root package name */
    public zzwj f16660d = new zzwj(0);
    public final IdentityHashMap k = new IdentityHashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f16659c = new HashMap();
    public final ArrayList i = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f16663g = new HashMap();
    public final HashSet l = new HashSet();

    public feh(com.google.android.gms.internal.ads.s sVar, zzlw zzlwVar, zzdm zzdmVar, zzoj zzojVar) {
        this.f16662f = zzojVar;
        this.f16661e = sVar;
        this.f16657a = zzlwVar;
        this.h = zzdmVar;
    }

    public final zzbv m(List list, zzwj zzwjVar) {
        ArrayList arrayList = this.i;
        t(0, arrayList.size());
        return s(arrayList.size(), list, zzwjVar);
    }

    public final void n(iw iwVar) {
        if (iwVar.f19445b && iwVar.f19448e.isEmpty()) {
            gdd gddVar = (gdd) this.f16663g.remove(iwVar);
            gddVar.getClass();
            ejq ejqVar = gddVar.f17921c;
            zzut zzutVar = gddVar.f17919a;
            zzutVar.zzp(gddVar.f17920b);
            zzutVar.zzs(ejqVar);
            zzutVar.zzr(ejqVar);
            this.l.remove(iwVar);
        }
    }

    public final void o(zzup zzupVar) {
        IdentityHashMap identityHashMap = this.k;
        iw iwVar = (iw) identityHashMap.remove(zzupVar);
        iwVar.getClass();
        iwVar.f19446c.zzG(zzupVar);
        iwVar.f19448e.remove(((zzuj) zzupVar).zza);
        if (!identityHashMap.isEmpty()) {
            w();
        }
        n(iwVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzkv, com.google.android.gms.internal.ads.zzus] */
    public final void p(iw iwVar) {
        zzum zzumVar = iwVar.f19446c;
        ?? r1 = new zzus() { // from class: com.google.android.gms.internal.ads.zzkv
            @Override // com.google.android.gms.internal.ads.zzus
            public final void zza(zzut zzutVar, zzbv zzbvVar) {
                feh.this.f16661e.zzh();
            }
        };
        ejq ejqVar = new ejq(this, iwVar);
        this.f16663g.put(iwVar, new gdd(zzumVar, r1, ejqVar));
        zzumVar.zzh(new Handler(zzen.zzz(), null), ejqVar);
        zzumVar.zzg(new Handler(zzen.zzz(), null), ejqVar);
        zzumVar.zzm(r1, this.f16658b, this.f16662f);
    }

    public final boolean q() {
        return this.j;
    }

    public final zzbv r() {
        ArrayList arrayList = this.i;
        if (arrayList.isEmpty()) {
            return zzbv.zza;
        }
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            iw iwVar = (iw) arrayList.get(i2);
            iwVar.f19444a = i;
            i += iwVar.f19446c.zzC().zzc();
        }
        return new aqw(arrayList, this.f16660d);
    }

    public final zzbv s(int i, List list, zzwj zzwjVar) {
        if (!list.isEmpty()) {
            this.f16660d = zzwjVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                iw iwVar = (iw) list.get(i2 - i);
                ArrayList arrayList = this.i;
                if (i2 > 0) {
                    iw iwVar2 = (iw) arrayList.get(i2 - 1);
                    iwVar.f19444a = iwVar2.f19446c.zzC().zzc() + iwVar2.f19444a;
                    iwVar.f19445b = false;
                    iwVar.f19448e.clear();
                } else {
                    iwVar.f19444a = 0;
                    iwVar.f19445b = false;
                    iwVar.f19448e.clear();
                }
                int zzc = iwVar.f19446c.zzC().zzc();
                for (int i3 = i2; i3 < arrayList.size(); i3++) {
                    ((iw) arrayList.get(i3)).f19444a += zzc;
                }
                arrayList.add(i2, iwVar);
                this.f16659c.put(iwVar.f19447d, iwVar);
                if (this.j) {
                    p(iwVar);
                    if (this.k.isEmpty()) {
                        this.l.add(iwVar);
                    } else {
                        gdd gddVar = (gdd) this.f16663g.get(iwVar);
                        if (gddVar != null) {
                            gddVar.f17919a.zzi(gddVar.f17920b);
                        }
                    }
                }
            }
        }
        return r();
    }

    public final void t(int i, int i2) {
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            ArrayList arrayList = this.i;
            iw iwVar = (iw) arrayList.remove(i2);
            this.f16659c.remove(iwVar.f19447d);
            int i3 = -iwVar.f19446c.zzC().zzc();
            for (int i4 = i2; i4 < arrayList.size(); i4++) {
                ((iw) arrayList.get(i4)).f19444a += i3;
            }
            iwVar.f19445b = true;
            if (this.j) {
                n(iwVar);
            }
        }
    }

    public final zzbv u(zzwj zzwjVar) {
        int size = this.i.size();
        if (zzwjVar.zzc() != size) {
            zzwjVar = zzwjVar.zzf().zzg(0, size);
        }
        this.f16660d = zzwjVar;
        return r();
    }

    public final zzbv v(int i, int i2, List list) {
        ArrayList arrayList = this.i;
        zzdb.zzd(i >= 0 && i <= i2 && i2 <= arrayList.size());
        zzdb.zzd(list.size() == i2 - i);
        for (int i3 = i; i3 < i2; i3++) {
            ((iw) arrayList.get(i3)).f19446c.zzt((zzaw) list.get(i3 - i));
        }
        return r();
    }

    public final void w() {
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            iw iwVar = (iw) it.next();
            if (iwVar.f19448e.isEmpty()) {
                gdd gddVar = (gdd) this.f16663g.get(iwVar);
                if (gddVar != null) {
                    gddVar.f17919a.zzi(gddVar.f17920b);
                }
                it.remove();
            }
        }
    }

    public final void x(zzhd zzhdVar) {
        zzdb.zzf(!this.j);
        this.f16658b = zzhdVar;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i >= arrayList.size()) {
                this.j = true;
                return;
            }
            iw iwVar = (iw) arrayList.get(i);
            p(iwVar);
            this.l.add(iwVar);
            i++;
        }
    }

    public final zzbv y(int i, int i2, zzwj zzwjVar) {
        boolean z = false;
        if (i >= 0 && i <= i2 && i2 <= this.i.size()) {
            z = true;
        }
        zzdb.zzd(z);
        this.f16660d = zzwjVar;
        t(i, i2);
        return r();
    }
}
