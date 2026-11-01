package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.ImageView;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzftd;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class fkn {

    /* renamed from: a, reason: collision with root package name */
    public Object f16937a;

    /* renamed from: b, reason: collision with root package name */
    public int f16938b;

    /* renamed from: c, reason: collision with root package name */
    public Object f16939c;

    /* renamed from: d, reason: collision with root package name */
    public Object f16940d;

    public fkn(Bitmap bitmap, cpv cpvVar, gye gyeVar, int i) {
        if ((bitmap != null) == (cpvVar != null)) {
            throw new AssertionError();
        }
        this.f16940d = bitmap;
        this.f16937a = cpvVar;
        StringBuilder sb = dxc.f14999a;
        if (gyeVar == null) {
            throw new NullPointerException("loadedFrom == null");
        }
        this.f16939c = gyeVar;
        this.f16938b = i;
    }

    public fkn(ImageView imageView) {
        this.f16938b = 0;
        this.f16939c = imageView;
    }

    public fkn(zzcfk zzcfkVar) {
        this.f16939c = zzcfkVar.getLayoutParams();
        ViewParent parent = zzcfkVar.getParent();
        this.f16937a = zzcfkVar.zzE();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new bij("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.f16940d = viewGroup;
        this.f16938b = viewGroup.indexOfChild(zzcfkVar.zzF());
        viewGroup.removeView(zzcfkVar.zzF());
        zzcfkVar.zzaq(true);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public fkn(cpv cpvVar, gye gyeVar) {
        this(null, cpvVar, gyeVar, 0);
        StringBuilder sb = dxc.f14999a;
        if (cpvVar == null) {
            throw new NullPointerException("source == null");
        }
    }

    public void e(Throwable th) {
        bpy bpyVar = (bpy) this.f16937a;
        if (th instanceof TimeoutException) {
            bpyVar.bq(hm.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, edc.r);
            int i = gbs.f17875a;
        } else {
            bpyVar.bq(hm.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, edc.r);
            int i2 = gbs.f17875a;
        }
        ((Runnable) this.f16940d).run();
    }

    public Looper f() {
        Looper looper;
        synchronized (this.f16937a) {
            try {
                if (this.f16938b != 0) {
                    ckd.w((HandlerThread) this.f16939c, "Invalid state: handlerThread should already been initialized.");
                } else if (((HandlerThread) this.f16939c) == null) {
                    agd.e("Starting the looper thread.");
                    HandlerThread handlerThread = new HandlerThread("LooperProvider");
                    this.f16939c = handlerThread;
                    handlerThread.start();
                    this.f16940d = new zzftd(((HandlerThread) this.f16939c).getLooper());
                    agd.e("Looper thread started.");
                } else {
                    agd.e("Resuming the looper thread");
                    this.f16937a.notifyAll();
                }
                this.f16938b++;
                looper = ((HandlerThread) this.f16939c).getLooper();
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    public void g() {
        ImageView imageView = (ImageView) this.f16939c;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            edd.d(drawable);
        }
        if (drawable != null) {
            int i = Build.VERSION.SDK_INT;
            if (i <= 21 && i == 21) {
                if (((cxc) this.f16937a) == null) {
                    this.f16937a = new cxc(2);
                }
                cxc cxcVar = (cxc) this.f16937a;
                cxcVar.f13671a = null;
                cxcVar.f13675e = false;
                cxcVar.f13672b = null;
                cxcVar.f13674d = false;
                ColorStateList imageTintList = imageView.getImageTintList();
                if (imageTintList != null) {
                    cxcVar.f13675e = true;
                    cxcVar.f13671a = imageTintList;
                }
                PorterDuff.Mode imageTintMode = imageView.getImageTintMode();
                if (imageTintMode != null) {
                    cxcVar.f13674d = true;
                    cxcVar.f13672b = imageTintMode;
                }
                if (cxcVar.f13675e || cxcVar.f13674d) {
                    cfl.e(drawable, cxcVar, imageView.getDrawableState());
                    return;
                }
            }
            cxc cxcVar2 = (cxc) this.f16940d;
            if (cxcVar2 != null) {
                cfl.e(drawable, cxcVar2, imageView.getDrawableState());
            }
        }
    }

    public void h(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        int resourceId;
        ImageView imageView = (ImageView) this.f16939c;
        Context context = imageView.getContext();
        int[] iArr = acs.n;
        dzh j = dzh.j(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) j.f15121f;
        goi.x(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) j.f15121f, i);
        try {
            Drawable drawable3 = imageView.getDrawable();
            if (drawable3 == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable3 = fso.ai(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                edd.d(drawable3);
            }
            if (typedArray.hasValue(2)) {
                ColorStateList aa = j.aa(2);
                int i2 = Build.VERSION.SDK_INT;
                imageView.setImageTintList(aa);
                if (i2 == 21 && (drawable2 = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable2);
                }
            }
            if (typedArray.hasValue(3)) {
                PorterDuff.Mode f2 = edd.f(typedArray.getInt(3, -1), null);
                int i3 = Build.VERSION.SDK_INT;
                imageView.setImageTintMode(f2);
                if (i3 == 21 && (drawable = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
            j.af();
        } catch (Throwable th) {
            j.af();
            throw th;
        }
    }

    public void i() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = fso.ah();
        layoutParams.gravity = 80;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.flags = 24;
        layoutParams.y = (int) (((Context) this.f16939c).getResources().getDisplayMetrics().density * 40.0f);
        ((WindowManager) this.f16940d).addView((View) this.f16937a, layoutParams);
        if (this.f16938b > 0) {
            new Handler().postDelayed(new fvi(27, this), this.f16938b);
        }
    }
}
