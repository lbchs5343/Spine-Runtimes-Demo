package g;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.util.SparseIntArray;
import android.view.MenuItem;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class cgo {
    public Object aa;

    /* renamed from: ab, reason: collision with root package name */
    public Object f12848ab;

    public cgo() {
        this.aa = new SparseIntArray();
        this.f12848ab = new SparseIntArray();
    }

    public cgo(int i) {
        this.f12848ab = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            ((ArrayList) this.f12848ab).add(new agm());
        }
    }

    public cgo(dre dreVar) {
        this.f12848ab = dreVar;
    }

    public /* synthetic */ cgo(Object obj) {
        this.aa = obj;
    }

    public static float ac(int i, int i2, int i3) {
        return dzm.ac((i - i2) / i3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
    }

    public int _q(int i, int i2) {
        int _r = _r(i);
        if (_r == i2) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int _r2 = _r(i4);
            i3 += _r2;
            if (i3 == i2) {
                i3 = 0;
            } else if (i3 > i2) {
                i3 = _r2;
            }
        }
        if (_r + i3 <= i2) {
            return i3;
        }
        return 0;
    }

    public abstract int _r(int i);

    public abstract Object a(IBinder iBinder);

    public MenuItem ad(MenuItem menuItem) {
        if (!(menuItem instanceof buc)) {
            return menuItem;
        }
        buc bucVar = (buc) menuItem;
        if (((bcp) this.f12848ab) == null) {
            this.f12848ab = new bcp(0);
        }
        MenuItem menuItem2 = (MenuItem) ((bcp) this.f12848ab).get(bucVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        hcv hcvVar = new hcv((Context) this.aa, bucVar);
        ((bcp) this.f12848ab).put(bucVar, hcvVar);
        return hcvVar;
    }

    public int ae(int i, int i2) {
        int _r = _r(i);
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int _r2 = _r(i5);
            i3 += _r2;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = _r2;
            }
        }
        return i3 + _r > i2 ? i4 + 1 : i4;
    }

    public void af() {
        ((SparseIntArray) this.aa).clear();
    }

    public void ag() {
        sr srVar = (sr) this.aa;
        if (srVar != null) {
            try {
                ((dre) this.f12848ab).aw.unregisterReceiver(srVar);
            } catch (IllegalArgumentException unused) {
            }
            this.aa = null;
        }
    }

    public void ah() {
        ag();
        IntentFilter e2 = e();
        if (e2.countActions() == 0) {
            return;
        }
        if (((sr) this.aa) == null) {
            this.aa = new sr(0, this);
        }
        ((dre) this.f12848ab).aw.registerReceiver((sr) this.aa, e2);
    }

    public Object ai(Context context) {
        Context context2;
        if (this.f12848ab == null) {
            ckd.k(context);
            AtomicBoolean atomicBoolean = evp.f16244c;
            try {
                context2 = context.createPackageContext("com.google.android.gms", 3);
            } catch (PackageManager.NameNotFoundException unused) {
                context2 = null;
            }
            if (context2 == null) {
                throw new grc("Could not get remote context.");
            }
            try {
                this.f12848ab = a((IBinder) context2.getClassLoader().loadClass((String) this.aa).newInstance());
            } catch (ClassNotFoundException e2) {
                throw new grc("Could not load creator class.", e2);
            } catch (IllegalAccessException e3) {
                throw new grc("Could not access creator.", e3);
            } catch (InstantiationException e4) {
                throw new grc("Could not instantiate creator.", e4);
            }
        }
        return this.f12848ab;
    }

    public abstract IntentFilter e();

    public abstract int f();

    public abstract void g();

    public abstract void t();

    public abstract void u();

    public abstract void w(bbg bbgVar);

    public abstract void x();

    public abstract void y();

    public abstract void z();
}
