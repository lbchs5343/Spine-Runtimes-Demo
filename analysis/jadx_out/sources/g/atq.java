package g;

import android.view.ViewGroup;
import cn.trinea.android.developertools.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class atq {

    /* renamed from: a, reason: collision with root package name */
    public static final fgq f10821a;

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f10822b;

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f10823c;

    static {
        fgq fgqVar = new fgq();
        fgqVar.f19089b = false;
        fgqVar._k(new ud(2));
        fgqVar._k(new fya());
        fgqVar._k(new ud(1));
        f10821a = fgqVar;
        f10822b = new ThreadLocal();
        f10823c = new ArrayList();
    }

    public static void d(ViewGroup viewGroup, fqk fqkVar) {
        ArrayList arrayList = f10823c;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (fqkVar == null) {
            fqkVar = f10821a;
        }
        fqk clone = fqkVar.clone();
        ArrayList arrayList2 = (ArrayList) e().get(viewGroup);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((fqk) it.next()).u(viewGroup);
            }
        }
        clone.bh(viewGroup, true);
        if (viewGroup.getTag(R.id.transition_current_scene) != null) {
            throw new ClassCastException();
        }
        viewGroup.setTag(R.id.transition_current_scene, null);
        cwi cwiVar = new cwi();
        cwiVar.f13628a = clone;
        cwiVar.f13629b = viewGroup;
        viewGroup.addOnAttachStateChangeListener(cwiVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(cwiVar);
    }

    public static tl e() {
        tl tlVar;
        ThreadLocal threadLocal = f10822b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (tlVar = (tl) weakReference.get()) != null) {
            return tlVar;
        }
        tl tlVar2 = new tl(0);
        threadLocal.set(new WeakReference(tlVar2));
        return tlVar2;
    }
}
