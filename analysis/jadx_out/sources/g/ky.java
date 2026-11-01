package g;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzgxp;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class ky implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final Object f19574a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19575b;

    /* renamed from: c, reason: collision with root package name */
    public Object f19576c;

    public ky(zzgxp zzgxpVar) {
        this.f19575b = 2;
        if (!(zzgxpVar instanceof com.google.android.gms.internal.ads.t)) {
            this.f19574a = null;
            this.f19576c = (com.google.android.gms.internal.ads.ah) zzgxpVar;
            return;
        }
        com.google.android.gms.internal.ads.t tVar = (com.google.android.gms.internal.ads.t) zzgxpVar;
        ArrayDeque arrayDeque = new ArrayDeque(tVar.g());
        this.f19574a = arrayDeque;
        arrayDeque.push(tVar);
        zzgxp zzgxpVar2 = tVar.zzd;
        while (zzgxpVar2 instanceof com.google.android.gms.internal.ads.t) {
            com.google.android.gms.internal.ads.t tVar2 = (com.google.android.gms.internal.ads.t) zzgxpVar2;
            ((ArrayDeque) this.f19574a).push(tVar2);
            zzgxpVar2 = tVar2.zzd;
        }
        this.f19576c = (com.google.android.gms.internal.ads.ah) zzgxpVar2;
    }

    public ky(bve bveVar) {
        this.f19575b = 0;
        this.f19574a = new ArrayList();
        this.f19576c = bveVar;
    }

    public ky(Iterator it, Iterator it2) {
        this.f19575b = 1;
        this.f19576c = it;
        this.f19574a = it2;
    }

    public com.google.android.gms.internal.ads.ah d() {
        com.google.android.gms.internal.ads.ah ahVar;
        ArrayDeque arrayDeque = (ArrayDeque) this.f19574a;
        com.google.android.gms.internal.ads.ah ahVar2 = (com.google.android.gms.internal.ads.ah) this.f19576c;
        if (ahVar2 == null) {
            throw new NoSuchElementException();
        }
        do {
            ahVar = null;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzgxp zzgxpVar = ((com.google.android.gms.internal.ads.t) arrayDeque.pop()).zze;
            while (zzgxpVar instanceof com.google.android.gms.internal.ads.t) {
                com.google.android.gms.internal.ads.t tVar = (com.google.android.gms.internal.ads.t) zzgxpVar;
                arrayDeque.push(tVar);
                zzgxpVar = tVar.zzd;
            }
            ahVar = (com.google.android.gms.internal.ads.ah) zzgxpVar;
        } while (ahVar.zzd() == 0);
        this.f19576c = ahVar;
        return ahVar2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f19575b) {
            case 0:
                return ((Iterator) this.f19576c).hasNext();
            case 1:
                if (((Iterator) this.f19576c).hasNext()) {
                    return true;
                }
                return ((Iterator) this.f19574a).hasNext();
            default:
                return ((com.google.android.gms.internal.ads.ah) this.f19576c) != null;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f19575b) {
            case 0:
                Object next = ((Iterator) this.f19576c).next();
                ArrayList arrayList = (ArrayList) this.f19574a;
                View view = (View) next;
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                bve bveVar = viewGroup != null ? new bve(3, viewGroup) : null;
                if (bveVar == null || !bveVar.hasNext()) {
                    while (!((Iterator) this.f19576c).hasNext() && !arrayList.isEmpty()) {
                        this.f19576c = (Iterator) gsv.bg(arrayList);
                        eko.b(arrayList);
                    }
                } else {
                    arrayList.add((Iterator) this.f19576c);
                    this.f19576c = bveVar;
                }
                return next;
            case 1:
                Iterator it = (Iterator) this.f19574a;
                Iterator it2 = (Iterator) this.f19576c;
                if (it2.hasNext()) {
                    return new bsa(((Integer) it2.next()).toString());
                }
                if (it.hasNext()) {
                    return new bsa((String) it.next());
                }
                throw new NoSuchElementException();
            default:
                return d();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        switch (this.f19575b) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException();
        }
    }
}
