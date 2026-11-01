package g;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ctw {

    /* renamed from: c, reason: collision with root package name */
    public int f13501c;

    /* renamed from: d, reason: collision with root package name */
    public int f13502d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f13503e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f13504f;

    /* renamed from: g, reason: collision with root package name */
    public int f13505g;
    public int h;
    public final Object i;

    public ctw(int i) {
        this.f13503e = 1;
        this.f13505g = i;
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f13504f = new aoy(11);
        this.i = new cuf(6);
    }

    public ctw(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.f13503e = 2;
        this.i = staggeredGridLayoutManager;
        this.f13504f = new ArrayList();
        this.f13505g = Integer.MIN_VALUE;
        this.h = Integer.MIN_VALUE;
        this.f13501c = 0;
        this.f13502d = i;
    }

    public ctw(dsg dsgVar, dsg dsgVar2) {
        this.f13503e = 0;
        this.f13504f = dsgVar;
        this.i = dsgVar2;
    }

    public static void j(Object obj, Object obj2) {
        bff.p(obj, "key");
        bff.p(obj2, "value");
    }

    public static fpa k(dsg dsgVar, dsg dsgVar2, boolean z) {
        any anyVar;
        if (z) {
            int aa = dsgVar.aa();
            if (aa == 0) {
                anyVar = any.BUILD;
            } else if (aa == 1) {
                anyVar = any.RUNTIME;
            } else {
                if (aa != 2) {
                    throw new beo(awf.ac(aa, "Unknown annotation visibility value: "));
                }
                anyVar = any.SYSTEM;
            }
        } else {
            anyVar = null;
        }
        int u = byh.u(dsgVar);
        int u2 = byh.u(dsgVar);
        LinkedHashMap linkedHashMap = new LinkedHashMap(u2);
        for (int i = 0; i < u2; i++) {
            linkedHashMap.put(dsgVar2.z(byh.u(dsgVar)), fso.v(dsgVar, dsgVar2));
        }
        return new fpa(anyVar, dsgVar2.g(u), linkedHashMap);
    }

    public Object b(Object obj) {
        bff.p(obj, "key");
        return null;
    }

    public int l(int i) {
        int i2 = this.h;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (((ArrayList) this.f13504f).size() == 0) {
            return i;
        }
        q();
        return this.h;
    }

    public Object m(Object obj, Object obj2) {
        Object put;
        bff.p(obj, "key");
        synchronized (((cuf) this.i)) {
            int i = this.h;
            j(obj, obj2);
            this.h = i + 1;
            aoy aoyVar = (aoy) this.f13504f;
            aoyVar.getClass();
            put = ((LinkedHashMap) aoyVar.h).put(obj, obj2);
            if (put != null) {
                int i2 = this.h;
                j(obj, put);
                this.h = i2 - 1;
            }
        }
        s(this.f13505g);
        return put;
    }

    public void n(int i) {
        dsg dsgVar = (dsg) this.f13504f;
        ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
        this.f13505g = i;
        if (i == 0) {
            this.h = 0;
            this.f13501c = 0;
            this.f13502d = 0;
        } else {
            dsgVar.f14707d = i;
            dsgVar.j(4);
            this.h = byteBuffer.getInt();
            this.f13501c = byteBuffer.getInt();
            this.f13502d = byteBuffer.getInt();
        }
    }

    public int o() {
        return ((StaggeredGridLayoutManager) this.i).k ? r(r0.size() - 1, -1) : r(0, ((ArrayList) this.f13504f).size());
    }

    public int p() {
        return ((StaggeredGridLayoutManager) this.i).k ? r(0, ((ArrayList) this.f13504f).size()) : r(r0.size() - 1, -1);
    }

    public void q() {
        View view = (View) ((ArrayList) this.f13504f).get(r0.size() - 1);
        cur curVar = (cur) view.getLayoutParams();
        this.h = ((StaggeredGridLayoutManager) this.i).al.o(view);
        curVar.getClass();
    }

    public int r(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.i;
        int p = staggeredGridLayoutManager.al.p();
        int r = staggeredGridLayoutManager.al.r();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) ((ArrayList) this.f13504f).get(i);
            int k = staggeredGridLayoutManager.al.k(view);
            int o = staggeredGridLayoutManager.al.o(view);
            boolean z = k <= r;
            boolean z2 = o >= p;
            if (z && z2 && (k < p || o > r)) {
                return androidx.recyclerview.widget.b.ed(view);
            }
            i += i3;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00a1, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void s(int i) {
        Object value;
        while (true) {
            synchronized (((cuf) this.i)) {
                try {
                    if (this.h < 0 || (((LinkedHashMap) ((aoy) this.f13504f).h).isEmpty() && this.h != 0)) {
                        break;
                    }
                    if (this.h <= i || ((LinkedHashMap) ((aoy) this.f13504f).h).isEmpty()) {
                        break;
                    }
                    Set entrySet = ((LinkedHashMap) ((aoy) this.f13504f).h).entrySet();
                    bff.e(entrySet, "map.entries");
                    Object obj = null;
                    if (entrySet instanceof List) {
                        List list = (List) entrySet;
                        if (!list.isEmpty()) {
                            obj = list.get(0);
                        }
                    } else {
                        Iterator it = entrySet.iterator();
                        if (it.hasNext()) {
                            obj = it.next();
                        }
                    }
                    Map.Entry entry = (Map.Entry) obj;
                    if (entry == null) {
                        return;
                    }
                    Object key = entry.getKey();
                    value = entry.getValue();
                    aoy aoyVar = (aoy) this.f13504f;
                    aoyVar.getClass();
                    bff.p(key, "key");
                    ((LinkedHashMap) aoyVar.h).remove(key);
                    int i2 = this.h;
                    j(key, value);
                    this.h = i2 - 1;
                } catch (Throwable th) {
                    throw th;
                }
            }
            bff.p(value, "oldValue");
        }
    }

    public List t(int i) {
        dsg dsgVar = (dsg) this.f13504f;
        ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        dsgVar.m(i);
        int i2 = byteBuffer.getInt();
        if (i2 == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(i2);
        int position = byteBuffer.position();
        for (int i3 = 0; i3 < i2; i3++) {
            dsgVar.m((i3 * 4) + position);
            dsgVar.m(byteBuffer.getInt());
            arrayList.add(k(dsgVar, (dsg) this.i, true));
        }
        return arrayList;
    }

    public String toString() {
        String str;
        switch (this.f13503e) {
            case 1:
                synchronized (((cuf) this.i)) {
                    try {
                        int i = this.f13501c;
                        int i2 = this.f13502d + i;
                        str = "LruCache[maxSize=" + this.f13505g + ",hits=" + this.f13501c + ",misses=" + this.f13502d + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str;
            default:
                return super.toString();
        }
    }

    public View u(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.i;
        ArrayList arrayList = (ArrayList) this.f13504f;
        View view = null;
        if (i2 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.k && androidx.recyclerview.widget.b.ed(view2) >= i) || ((!staggeredGridLayoutManager.k && androidx.recyclerview.widget.b.ed(view2) <= i) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            View view3 = (View) arrayList.get(i3);
            if ((staggeredGridLayoutManager.k && androidx.recyclerview.widget.b.ed(view3) <= i) || ((!staggeredGridLayoutManager.k && androidx.recyclerview.widget.b.ed(view3) >= i) || !view3.hasFocusable())) {
                break;
            }
            i3++;
            view = view3;
        }
        return view;
    }

    public void v() {
        ((ArrayList) this.f13504f).clear();
        this.f13505g = Integer.MIN_VALUE;
        this.h = Integer.MIN_VALUE;
        this.f13501c = 0;
    }

    public int w(int i) {
        int i2 = this.f13505g;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (((ArrayList) this.f13504f).size() == 0) {
            return i;
        }
        View view = (View) ((ArrayList) this.f13504f).get(0);
        cur curVar = (cur) view.getLayoutParams();
        this.f13505g = ((StaggeredGridLayoutManager) this.i).al.k(view);
        curVar.getClass();
        return this.f13505g;
    }

    public Object x(Object obj) {
        Object put;
        bff.p(obj, "key");
        synchronized (((cuf) this.i)) {
            aoy aoyVar = (aoy) this.f13504f;
            aoyVar.getClass();
            Object obj2 = ((LinkedHashMap) aoyVar.h).get(obj);
            if (obj2 != null) {
                this.f13501c++;
                return obj2;
            }
            this.f13502d++;
            Object b2 = b(obj);
            if (b2 == null) {
                return null;
            }
            synchronized (((cuf) this.i)) {
                aoy aoyVar2 = (aoy) this.f13504f;
                aoyVar2.getClass();
                put = ((LinkedHashMap) aoyVar2.h).put(obj, b2);
                if (put != null) {
                    aoy aoyVar3 = (aoy) this.f13504f;
                    aoyVar3.getClass();
                    ((LinkedHashMap) aoyVar3.h).put(obj, put);
                } else {
                    int i = this.h;
                    j(obj, b2);
                    this.h = i + 1;
                }
            }
            if (put != null) {
                return put;
            }
            s(this.f13505g);
            return b2;
        }
    }
}
