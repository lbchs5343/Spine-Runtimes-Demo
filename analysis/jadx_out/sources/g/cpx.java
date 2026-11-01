package g;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class cpx extends Drawable implements Animatable, aex {

    /* renamed from: a, reason: collision with root package name */
    public final dyn f13298a;

    /* renamed from: b, reason: collision with root package name */
    public final eqi f13299b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f13300c;

    /* renamed from: d, reason: collision with root package name */
    public final PaintFlagsDrawFilter f13301d;

    /* renamed from: e, reason: collision with root package name */
    public final Matrix f13302e;

    /* renamed from: f, reason: collision with root package name */
    public final HashSet f13303f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f13304g;
    public final boolean h;
    public final eum i;
    public Bitmap j;

    public cpx(fc fcVar) {
        Paint paint = new Paint();
        this.f13304g = paint;
        this.f13301d = new PaintFlagsDrawFilter(0, 3);
        this.f13302e = new Matrix();
        this.f13303f = new HashSet();
        this.f13299b = new eqi(this, Looper.getMainLooper(), 9);
        this.f13298a = new dyn(15, this);
        this.h = true;
        this.f13300c = new HashSet();
        paint.setAntiAlias(true);
        this.i = new eum(fcVar, this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Bitmap bitmap = this.j;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.setDrawFilter(this.f13301d);
        canvas.drawBitmap(this.j, this.f13302e, this.f13304g);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        try {
            return this.i.x().height();
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        try {
            return this.i.x().width();
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        super.invalidateSelf();
        Iterator it = new HashSet(this.f13300c).iterator();
        while (it.hasNext()) {
            Drawable.Callback callback = (Drawable.Callback) ((WeakReference) it.next()).get();
            if (callback != null && callback != super.getCallback()) {
                callback.invalidateDrawable(this);
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.i.af();
    }

    public final void k() {
        eum eumVar = this.i;
        eumVar.q.post(new aup(eumVar, this, 0));
        if (this.h) {
            eumVar.ah();
        } else {
            if (eumVar.af()) {
                return;
            }
            eumVar.ah();
        }
    }

    public final void l() {
        eum eumVar = this.i;
        eumVar.q.post(new aup(eumVar, this, 1));
        if (this.h) {
            eumVar.ad();
        } else {
            eumVar.q.post(new bbf(eumVar, 1));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f13304g.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(int i, int i2, int i3, int i4) {
        int i5;
        super.setBounds(i, i2, i3, i4);
        int width = getBounds().width();
        int height = getBounds().height();
        eum eumVar = this.i;
        Handler handler = eumVar.q;
        boolean z = true;
        if (width != 0 && height != 0) {
            int min = Math.min(eumVar.x().width() / width, eumVar.x().height() / height);
            i5 = 1;
            while (true) {
                int i6 = i5 * 2;
                if (i6 > min) {
                    break;
                } else {
                    i5 = i6;
                }
            }
        } else {
            i5 = 1;
        }
        if (i5 != eumVar.p) {
            boolean af = eumVar.af();
            handler.removeCallbacks(eumVar.f16182b);
            handler.post(new grz(eumVar, i5, af));
        } else {
            z = false;
        }
        this.f13302e.setScale(((getBounds().width() * 1.0f) * eumVar.p) / eumVar.x().width(), ((getBounds().height() * 1.0f) * eumVar.p) / eumVar.x().height());
        if (z) {
            this.j = Bitmap.createBitmap(eumVar.x().width() / eumVar.p, eumVar.x().height() / eumVar.p, Bitmap.Config.ARGB_4444);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f13304g.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        Drawable.Callback callback = super.getCallback();
        HashSet hashSet = this.f13300c;
        Iterator it = new HashSet(hashSet).iterator();
        boolean z3 = false;
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            Drawable.Callback callback2 = (Drawable.Callback) weakReference.get();
            if (callback2 == null) {
                arrayList.add(weakReference);
            } else if (callback2 == callback) {
                z3 = true;
            } else {
                callback2.invalidateDrawable(this);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            hashSet.remove((WeakReference) it2.next());
        }
        if (!z3) {
            hashSet.add(new WeakReference(callback));
        }
        if (this.h) {
            eum eumVar = this.i;
            if (z) {
                if (!eumVar.af()) {
                    k();
                }
            } else if (eumVar.af()) {
                l();
            }
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        eum eumVar = this.i;
        if (eumVar.af()) {
            eumVar.ad();
        }
        eumVar.q.post(new bbf(eumVar, 4));
        k();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        l();
    }
}
