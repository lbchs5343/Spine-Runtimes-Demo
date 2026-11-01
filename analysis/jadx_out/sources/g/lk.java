package g;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class lk {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f19594a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public WeakHashMap f19595b;

    /* renamed from: c, reason: collision with root package name */
    public SparseArray f19596c;

    /* renamed from: d, reason: collision with root package name */
    public WeakReference f19597d;

    public final View e(View view) {
        int size;
        WeakHashMap weakHashMap = this.f19595b;
        if (weakHashMap == null || !weakHashMap.containsKey(view)) {
            return null;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View e2 = e(viewGroup.getChildAt(childCount));
                if (e2 != null) {
                    return e2;
                }
            }
        }
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
        if (arrayList == null || arrayList.size() - 1 < 0) {
            return null;
        }
        throw tn.w(size, arrayList);
    }
}
