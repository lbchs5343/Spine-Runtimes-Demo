package androidx.fragment.app;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public l f179a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f180b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f181c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f182d = new HashMap();

    public final void e(x xVar) {
        Fragment fragment = xVar.f220e;
        if (fragment.mRetainInstance) {
            this.f179a.i(fragment);
        }
        if (((x) this.f181c.put(fragment.mWho, null)) != null && v.ao(2)) {
            fragment.toString();
        }
    }

    public final ArrayList f() {
        ArrayList arrayList = new ArrayList();
        for (x xVar : this.f181c.values()) {
            if (xVar != null) {
                arrayList.add(xVar);
            }
        }
        return arrayList;
    }

    public final ArrayList g() {
        ArrayList arrayList = new ArrayList();
        for (x xVar : this.f181c.values()) {
            if (xVar != null) {
                arrayList.add(xVar.f220e);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final void h(Fragment fragment) {
        if (this.f180b.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f180b) {
            this.f180b.add(fragment);
        }
        fragment.mAdded = true;
    }

    public final List i() {
        ArrayList arrayList;
        if (this.f180b.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.f180b) {
            arrayList = new ArrayList(this.f180b);
        }
        return arrayList;
    }

    public final m j(String str, m mVar) {
        HashMap hashMap = this.f182d;
        return mVar != null ? (m) hashMap.put(str, mVar) : (m) hashMap.remove(str);
    }

    public final Fragment k(String str) {
        x xVar = (x) this.f181c.get(str);
        if (xVar != null) {
            return xVar.f220e;
        }
        return null;
    }

    public final Fragment l(String str) {
        Fragment findFragmentByWho;
        for (x xVar : this.f181c.values()) {
            if (xVar != null && (findFragmentByWho = xVar.f220e.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public final void m(x xVar) {
        Fragment fragment = xVar.f220e;
        String str = fragment.mWho;
        HashMap hashMap = this.f181c;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(fragment.mWho, xVar);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.f179a.k(fragment);
            } else {
                this.f179a.i(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (v.ao(2)) {
            fragment.toString();
        }
    }
}
