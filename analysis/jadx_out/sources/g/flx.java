package g;

import android.view.MenuItem;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class flx implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public static final Class[] f17017a = {MenuItem.class};

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17018b = 0;

    /* renamed from: c, reason: collision with root package name */
    public Object f17019c;

    /* renamed from: d, reason: collision with root package name */
    public Object f17020d;

    public /* synthetic */ flx() {
    }

    public flx(hcv hcvVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f17020d = hcvVar;
        this.f17019c = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        switch (this.f17018b) {
            case 0:
                Object obj = this.f17019c;
                Method method = (Method) this.f17020d;
                try {
                    if (method.getReturnType() == Boolean.TYPE) {
                        return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                    }
                    method.invoke(obj, menuItem);
                    return true;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            default:
                return ((MenuItem.OnMenuItemClickListener) this.f17019c).onMenuItemClick(((hcv) this.f17020d).ad(menuItem));
        }
    }
}
